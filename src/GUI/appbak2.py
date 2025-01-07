from flask import Flask, request, jsonify, render_template, Response
from ros_node.move_base_node import MoveBaseNode  # ROS 노드 가져오기
import sys
import os
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
from threading import Event

# 프로젝트 루트 디렉토리를 Python 경로에 추가
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

# Flask 앱 초기화
app = Flask(__name__)

# ROS 노드 초기화
node = MoveBaseNode()

# 카메라 데이터를 처리하기 위한 전역 변수
frame = None
bridge = CvBridge()
event = Event()

def on_image(msg):
    """ROS 콜백 함수: 카메라 토픽에서 이미지 데이터 수신"""
    global frame
    try:
        rospy.loginfo("Received image message")  # 콜백 호출 여부 확인
        cv_image = bridge.imgmsg_to_cv2(msg, "bgr8")
        rospy.loginfo("Converted image to OpenCV format")  # 변환 성공 여부 확인
        _, buffer = cv2.imencode('.jpg', cv_image)
        frame = buffer.tobytes()  # Byte 배열로 변환
        rospy.loginfo("Image encoded to JPEG format")  # JPEG 변환 성공 여부 확인
        event.set()
    except Exception as e:
        rospy.logerr(f"Error in on_image: {e}")

# ROS 노드 초기화 확인 및 카메라 구독 설정
if not rospy.core.is_initialized():
    rospy.init_node('app_node', disable_signals=True)

# ROS 카메라 토픽 구독
rospy.Subscriber("/camera/image_raw", Image, on_image)

@app.route('/')
def index():
    name = "Flask User"
    return render_template('main.html', name=name)  # 메인 페이지

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
    """MJPEG 스트림 생성"""
    def generate():
        while True:
            event.wait()  # 새로운 프레임이 올 때까지 대기
            rospy.loginfo("Frame is ready to send")  # 프레임 준비 여부 확인
            event.clear()
            if frame is not None:
                yield (b'--frame\r\n'
                       b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')
    return Response(generate(), mimetype='multipart/x-mixed-replace; boundary=frame')

@app.route('/move', methods=['POST'])
def move_robot():
    data = request.json
    x = float(data.get('x', 0))
    y = float(data.get('y', 0))
    theta = float(data.get('theta', 0))
    node.move_absolute(x, y, theta)
    return jsonify({"message": f"Moving to X={x}, Y={y}, Theta={theta}"})

@app.route('/stop', methods=['POST'])
def stop():
    node.stop_robot()
    return jsonify({"message": "Robot stopped"})

@app.route('/explore', methods=['POST'])
def explore():
    state = request.json.get('state', 'start')
    if state == "start":
        node.toggle_explore()
        return jsonify({"message": "Exploration started"})
    elif state == "stop":
        node.toggle_explore()
        return jsonify({"message": "Exploration stopped"})
    return jsonify({"message": "Invalid state"}), 400

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')