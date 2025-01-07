#!/usr/bin/env python3

import rospy
import torch
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import webbrowser

# 학습된 YOLO 모델 가중치 경로
MODEL_PATH = "/home/oem/yolov5/weights/best.pt"  # 학습된 가중치 파일 경로를 명시

# YOLOv5 모델 초기화
try:
    model = torch.hub.load('/home/oem/yolov5', 'custom', path=MODEL_PATH, source='local')
    model.eval()  # 추론 모드
    rospy.loginfo("YOLOv5 model loaded successfully with custom weights.")
except Exception as e:
    rospy.logerr(f"Failed to load YOLOv5 model: {e}")
    exit()

# 클래스 ID와 사용자 이름 매핑
class_to_name = {
    0: "sh",
    1: "yj",
    2: "yk",
    3: "yw",
    4: "unknown"
}

class YoloNode:
    def __init__(self):
        rospy.init_node('yolo_detector', anonymous=True)

        # ROS 구독 및 퍼블리시 설정
        self.image_sub = rospy.Subscriber('/usb_cam/image_raw', Image, self.callback)
        self.result_pub = rospy.Publisher('/yolo_result', Image, queue_size=1)

        # CvBridge 초기화 (ROS 이미지 ↔ OpenCV 이미지 변환)
        self.bridge = CvBridge()

    def callback(self, data):
        try:
            # ROS 이미지를 OpenCV 이미지로 변환
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
        except CvBridgeError as e:
            rospy.logerr(f"CVBridge error: {e}")
            return

        # YOLOv5 추론 수행
        try:
            # 입력 이미지를 YOLO 모델이 요구하는 크기로 조정
            resized_image = cv2.resize(cv_image, (640, 480))  # 해상도 축소
            results = model(resized_image)  # YOLO 추론 실행
            annotated_image = results.render()[0]  # 결과를 시각화된 이미지로 렌더링

            # 결과에서 바운딩 박스와 사용자 이름 추출
            for *xyxy, conf, cls in results.xyxy[0]:
                x1, y1, x2, y2 = map(int, xyxy)
                class_id = int(cls)
                user_name = class_to_name.get(class_id, "Unknown")  # 클래스 ID를 사용자 이름으로 변환

                # 바운딩 박스와 사용자 이름 그리기
                cv2.rectangle(annotated_image, (x1, y1), (x2, y2), (0, 255, 0), 2)
                cv2.putText(annotated_image, user_name, (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (0, 255, 0), 2)

                rospy.loginfo("NAME:" + user_name)

                # "sh" 객체가 검출되었을 경우 sh.html로 연결
                if user_name == "sh":
                    rospy.loginfo("sh detected. Redirecting to sh.html.")
                    webbrowser.open("/home/oem/catkin_JS_ws/src/GUI/templates/sh.html")


        except Exception as e:
            rospy.logerr(f"YOLO inference error: {e}")
            return

        # YOLO 결과 이미지를 ROS 메시지로 변환 및 퍼블리시
        try:
            result_msg = self.bridge.cv2_to_imgmsg(annotated_image, "bgr8")
            self.result_pub.publish(result_msg)
        except CvBridgeError as e:
            rospy.logerr(f"CVBridge error while publishing: {e}")

if __name__ == '__main__':
    try:
        node = YoloNode()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("YOLO detector node terminated.")
