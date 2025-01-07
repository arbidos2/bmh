# -*- coding: utf-8 -*-
#!/usr/bin/env python

import sys
import rospy
import actionlib
from PyQt5 import QtWidgets
from PyQt5.QtCore import Qt, QTimer
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from geometry_msgs.msg import PoseWithCovarianceStamped, Twist
import tf
import std_srvs.srv
import os

from mainwindow import Ui_MainWindow  # UI 파일에서 생성한 클래스 임포트

class MoveBaseApp(QtWidgets.QMainWindow, Ui_MainWindow):
    def __init__(self):
        super(MoveBaseApp, self).__init__()
        self.setupUi(self)

        # move_base action client 설정
        self.client = actionlib.SimpleActionClient('move_base', MoveBaseAction)

        rospy.loginfo("Waiting for move_base action server...")
        if not self.client.wait_for_server(rospy.Duration(10)):
            rospy.logerr("move_base action server not available!")
            sys.exit(1)
        rospy.loginfo("Connected to move_base server.")

        # /cmd_vel 퍼블리셔 설정
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

        # 속도 슬라이더 초기 설정
        self.speedSlider.setRange(0, 100)  # 슬라이더 범위를 0에서 100까지 설정
        self.speedSlider.setValue(20)      # 기본 속도 20%로 설정
        self.speedSlider.valueChanged.connect(self.update_speed)  # 슬라이더 값 변경 시 속도 업데이트

        # 기본 속도 설정
        self.current_speed = 0.2  # 기본 속도 값 (m/s)
        self.update_speed()  # 초기 속도를 반영

        # 로봇의 현재 위치 초기화
        self.current_x = 0.0
        self.current_y = 0.0
        self.current_yaw = 0.0

        # 현재 위치를 구독
        rospy.Subscriber('/amcl_pose', PoseWithCovarianceStamped, self.update_pose)

        # 버튼 클릭 연결 (pressed 및 released 신호 사용)
        self.leftButton.pressed.connect(lambda: self.press_key(Qt.Key_Left))
        self.leftButton.released.connect(lambda: self.release_key(Qt.Key_Left))
        
        self.rightButton.pressed.connect(lambda: self.press_key(Qt.Key_Right))
        self.rightButton.released.connect(lambda: self.release_key(Qt.Key_Right))
        
        self.forwardButton.pressed.connect(lambda: self.press_key(Qt.Key_Up))
        self.forwardButton.released.connect(lambda: self.release_key(Qt.Key_Up))
        
        self.backwardButton.pressed.connect(lambda: self.press_key(Qt.Key_Down))
        self.backwardButton.released.connect(lambda: self.release_key(Qt.Key_Down))
        
        self.moveButton_00.clicked.connect(self.move_to_user_input)                      # 사용자 입력으로 이동
        self.moveButton_01.clicked.connect(lambda: self.move_absolute(3.3, 9.3, 0.0))     # 특정 위치 1 501호 
        self.moveButton_02.clicked.connect(lambda: self.move_absolute(-2.3, 9.5, 0.0))     # 특정 위치 2 502호 
        self.moveButton_03.clicked.connect(lambda: self.move_absolute(-7.4, 9.7, 0.0))    # 특정 위치 3 503호
        self.moveButton_04.clicked.connect(lambda: self.move_absolute(-13.1, 10.3, 0.0))   # 특정 위치 4 504호
        self.moveButton_05.clicked.connect(lambda: self.move_absolute(-18.2, 8.7, 0.0))   # 특정 위치 5 505호
        self.moveButton_06.clicked.connect(lambda: self.move_absolute(-6.8, 0.7, 0.0))   # 특정 위치 6 506호
        self.moveButton_07.clicked.connect(lambda: self.move_absolute(-2.0, -5.0, 0.0))   # 특정 위치 7 화장실
        self.moveButton_08.clicked.connect(lambda: self.move_absolute(-13.8, 1.3, 0.0))   # 특정 위치 8 실습실
        self.moveButton_09.clicked.connect(lambda: self.move_absolute(-23.3, 8.1, 0.0))   # 특정 위치 9 기자재
        self.moveButton_010.clicked.connect(lambda: self.move_absolute(1.3, -1.0, 0.0))   # 특정 위치 10 라운지
        self.moveButton_011.clicked.connect(lambda: self.move_absolute(13.14, 8.2, 0.0))   # 특정 위치 11 상담실
        self.moveButton_012.clicked.connect(lambda: self.move_absolute(13.6, 3.0, 0.0))   # 특정 위치 12 상담실2
        self.stopButton.clicked.connect(self.stop_robot)                                # 정지 버튼

        self.explore_state = False  # 탐색 상태를 저장할 변수 추가
        self.Explore_BT.clicked.connect(self.toggle_explore)

        # 키보드 입력을 위한 포커스 정책 설정
        self.setFocusPolicy(Qt.StrongFocus)
        self.setFocus()

        # 방향키 입력을 위한 타이머 설정
        self.teleop_timer = QTimer()
        self.teleop_timer.timeout.connect(self.publish_velocity)

        # 현재 방향키 상태 저장
        self.velocity = Twist()
        self.keys_pressed = set()

    def update_speed(self):
        """슬라이더 값을 기반으로 로봇의 이동 속도를 업데이트하는 메서드."""
        # 슬라이더 값은 0~100 사이에서 이동 속도를 조절함 (예: 0.0~1.0 사이로 맵핑)
        slider_value = self.speedSlider.value()
        self.current_speed = 0.01 * slider_value  # 슬라이더 값을 0.0~1.0 범위로 변환하여 속도 설정
        
        rospy.loginfo("Updated speed: {} m/s".format(self.current_speed))
        #파이썬3 사용자의 경우 아래 코드를 사용
        #rospy.loginfo(f"Updated speed: {self.current_speed} m/s")

        # 현재 설정된 속도를 라벨에 표시
        self.speedLabel.setText("Speed: {:.2f} m/s".format(self.current_speed))
        #파이썬3 사용자의 경우 아래 코드를 사용
        #self.speedLabel.setText(f"Speed: {self.current_speed:.2f} m/s")

    def update_pose(self, msg):
        """로봇의 현재 위치와 방향을 업데이트하는 콜백 함수."""
        self.current_x = msg.pose.pose.position.x
        self.current_y = msg.pose.pose.position.y

        # 쿼터니언을 유일한 각도로 변환
        orientation_q = msg.pose.pose.orientation
        (_, _, yaw) = tf.transformations.euler_from_quaternion(
            [orientation_q.x, orientation_q.y, orientation_q.z, orientation_q.w]
        )
        self.current_yaw = yaw

    def press_key(self, key):
        """버튼 또는 키보드의 방향키가 눌렸을 때 호출되는 메서드."""
        rospy.loginfo("Key pressed: {}".format(key))

        if key in [Qt.Key_Up, Qt.Key_Down, Qt.Key_Left, Qt.Key_Right]:
            if key not in self.keys_pressed:
                self.keys_pressed.add(key)
                self.update_velocity()
                if not self.teleop_timer.isActive():
                    self.teleop_timer.start(100)  # 100ms마다 속도 명령 발행

    def release_key(self, key):
        """버튼 또는 키보드의 방향키가 떼어졌을 때 호출되는 메서드."""
        rospy.loginfo("Key released: {}".format(key))

        if key in self.keys_pressed:
            self.keys_pressed.remove(key)
            self.update_velocity()
            if not self.keys_pressed:
                self.teleop_timer.stop()
                self.stop_robot()

    def move_relative(self, dx, dy, dtheta):
        """로봇의 현재 위치를 기준으로 상대적인 목표 좌표로 이동."""
        new_x = self.current_x + dx
        new_y = self.current_y + dy
        new_yaw = self.current_yaw + dtheta

        # 목표 오리엔테이션 쿼터니언으로 변환
        quaternion = tf.transformations.quaternion_from_euler(0, 0, new_yaw)

        rospy.loginfo("Relative Move - New Goal: x={}, y={}, yaw={}".format(new_x, new_y, new_yaw))

        self.send_goal(new_x, new_y, quaternion)
        
    def move_absolute(self, x, y, theta):
        """절대적인 목표 좌표로 이동."""
        quaternion = tf.transformations.quaternion_from_euler(0, 0, theta)

        rospy.loginfo("Absolute Move - Goal: x={}, y={}, yaw={}".format(x, y, theta))

        self.send_goal(x, y, quaternion)

    def move_to_user_input(self):
        """사용자 입력을 기반으로 목표 좌표로 이동."""
        try:
            x_input = float(self.X_lineEdit.text())  # QLineEdit 사용
            y_input = float(self.Y_lineEdit.text())  # QLineEdit 사용
            rospy.loginfo("User input: Moving to x={}, y={}".format(x_input, y_input))

            # 현재 방향을 유지하면서 위치만 변경
            quaternion = tf.transformations.quaternion_from_euler(0, 0, self.current_yaw)

            self.send_goal(x_input, y_input, quaternion)
        except AttributeError:
            rospy.logerr("AttributeError: 'MoveBaseApp' object has no attribute 'X_lineEdit' or 'Y_lineEdit'")
        except ValueError:
            rospy.logerr("Invalid input! Please enter numeric values for X and Y.")

    def send_goal(self, x, y, quaternion):
        """move_base에 목표 좌표를 설정하고 로봇을 움직이는 함수."""
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"  # 전역 프레임 사용
        goal.target_pose.header.stamp = rospy.Time.now()

        # 목표 좌표 설정
        goal.target_pose.pose.position.x = x
        goal.target_pose.pose.position.y = y
        goal.target_pose.pose.orientation.x = quaternion[0]
        goal.target_pose.pose.orientation.y = quaternion[1]
        goal.target_pose.pose.orientation.z = quaternion[2]
        goal.target_pose.pose.orientation.w = quaternion[3]

        # 목표 전송 및 콜백 설정
        rospy.loginfo("Sending goal location to x: {}, y: {}".format(x, y))
        self.client.send_goal(goal, done_cb=self.done_callback)

    def done_callback(self, status, result):
        if status == actionlib.GoalStatus.SUCCEEDED:
            rospy.loginfo("Reached goal!")
        else:
            rospy.logwarn("Failed to reach goal with status: {}".format(status))

    def stop_robot(self):
        """로봇을 정지하는 함수."""
        # move_base 목표 취소
        self.client.cancel_all_goals()

        # /cmd_vel 메시지로 로봇 정지
        stop_twist = Twist()
        self.cmd_vel_pub.publish(stop_twist)

        rospy.loginfo("Stopping the robot.")

    def update_velocity(self):
        """현재 눌려진 키 상태에 따라 속도 설정."""
        linear_x = 0.0
        angular_z = 0.0
        if Qt.Key_Up in self.keys_pressed:
            linear_x += 0.2  # 앞으로
        if Qt.Key_Down in self.keys_pressed:
            linear_x -= 0.2  # 뒤로
        if Qt.Key_Left in self.keys_pressed:
            angular_z += 0.5  # 왼쪽 회전
        if Qt.Key_Right in self.keys_pressed:
            angular_z -= 0.5  # 오른쪽 회전

        self.velocity.linear.x = linear_x
        self.velocity.angular.z = angular_z

    def publish_velocity(self):
        """현재 설정된 속도를 /cmd_vel로 퍼블리시."""
        self.cmd_vel_pub.publish(self.velocity)
    def keyPressEvent(self, event):
        """방향키 입력을 처리하는 메서드."""
        key = event.key()
        self.press_key(key)
        if key == Qt.Key_Escape:  # ESC 키로 로봇 멈춤
            self.stop_robot()
        else:
            super(MoveBaseApp, self).keyPressEvent(event)  # 기본 동작 유지

    def keyReleaseEvent(self, event):
        """방향키를 뗄 때 로봇을 멈추는 메서드."""
        key = event.key()
        self.release_key(key)
        super(MoveBaseApp, self).keyReleaseEvent(event)  # 기본 동작 유지

        # Explore_lite의 start/stop 기능을 Explore_BT 버튼과 연동하는 방법


    def toggle_explore(self):
        """Explore_lite의 시작/중지 기능."""
        if self.explore_state:
            rospy.loginfo("Stopping explore_lite...")
            os.system("rosnode kill /explore")
            self.explore_state = False
        else:
            rospy.loginfo("Starting explore_lite...")
            os.system("roslaunch explore_lite explore.launch &")
            self.explore_state = True

if __name__ == '__main__':
    rospy.init_node('turtlebot3_control_gui')
    app = QtWidgets.QApplication(sys.argv)
    window = MoveBaseApp()
    window.show()
    sys.exit(app.exec_())
