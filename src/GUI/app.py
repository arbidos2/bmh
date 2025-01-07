from flask import Flask, Response, render_template
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import threading
import torch
import numpy as np
import sys
import os


# 프로젝트 루트 디렉토리를 Python 경로에 추가
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

# Flask 앱 초기화
app = Flask(__name__)

# # ROS 노드 초기화
# node = MoveBaseNode()

# Initialize ROS
bridge = CvBridge()
frame = None

# Load YOLOv5 model
model = torch.hub.load('ultralytics/yolov5', 'custom', path='/home/oem/yolov5/weights/best.pt')  # Replace 'best.pt' with the path to your weights
model.conf = 0.5  # Confidence threshold
model.classes = [0, 1, 2, 3]  # sh, yj, yk, yw classes (index depends on your training dataset)

def ros_listener():
    """
    ROS node initialization and image subscription.
    """
    rospy.init_node('flask_ros_listener', anonymous=True)
    rospy.Subscriber('/usb_cam/image_raw', Image, callback)
    rospy.spin()

def callback(data):
    global frame
    try:
        # ROS 메시지를 OpenCV 형식으로 변환
        frame = bridge.imgmsg_to_cv2(data, "bgr8")
        print("Frame received!")  # 디버깅 메시지
    except Exception as e:
        rospy.logerr(f"Error in callback: {e}")

def detect_faces(frame):
    try:
        # YOLOv5 감지 수행
        results = model(frame)
        print(f"Detections: {results.xyxy[0]}")  # 디버깅 출력

        # 감지된 객체에 사각형 그리기
        for *box, conf, cls in results.xyxy[0]:
            x1, y1, x2, y2 = map(int, box)
            label = f"{results.names[int(cls)]} {conf:.2f}"
            cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
            cv2.putText(frame, label, (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

    except Exception as e:
        print(f"Error during YOLOv5 detection: {e}")

    return frame

# def detect_faces(frame):
#     """
#     Perform YOLOv5 inference on the input frame.
#     """
#     results = model(frame)
#     detections = results.xyxy[0]  # x1, y1, x2, y2, confidence, class

#     for *box, conf, cls in detections:
#         x1, y1, x2, y2 = map(int, box)
#         label = f"{results.names[int(cls)]} {conf:.2f}"
#         cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
#         cv2.putText(frame, label, (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

#     return frame

def generate_frames():
    """
    Generate frames for Flask video feed.
    """
    global frame
    while True:
        if frame is not None:
            processed_frame = detect_faces(frame.copy())
            ret, buffer = cv2.imencode('.jpg', processed_frame)
            if not ret:
                continue
            yield (b'--frame\r\n'
                   b'Content-Type: image/jpeg\r\n\r\n' + buffer.tobytes() + b'\r\n')

@app.route('/')
def index():
    return render_template('face.html')

@app.route('/main')
def main():
    return render_template('main.html')  # main.html 템플릿 반환

@app.route('/pin')
def pin():
    return render_template('pin.html')  # PIN 입력 페이지

@app.route('/manager')
def manager():
    return render_template('manager.html')  # 관리자 페이지

@app.route('/move')
def move():
    return render_template('move.html')  # 이동 명령 페이지

@app.route('/face')
def face():
    return render_template('face.html')  # 얼굴 등록 페이지

@app.route('/video_feed')
def video_feed():
    return Response(generate_frames(), mimetype='multipart/x-mixed-replace; boundary=frame')



if __name__ == '__main__':
    # Start ROS listener in a separate thread
    ros_thread = threading.Thread(target=ros_listener)
    ros_thread.daemon = True
    ros_thread.start()

    app.run(debug=True, host='0.0.0.0')