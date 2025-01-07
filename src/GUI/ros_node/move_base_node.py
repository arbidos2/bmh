# ros_node/move_base_node.py
import rospy
import actionlib
import os
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from geometry_msgs.msg import Twist
import tf

class MoveBaseNode:
    def __init__(self):
        rospy.init_node('move_base_node', anonymous=True)

        self.client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        rospy.loginfo("Waiting for move_base action server...")
        if not self.client.wait_for_server(rospy.Duration(5)):
            rospy.logerr("move_base action server not available!")
            rospy.signal_shutdown("move_base server not available")

        rospy.loginfo("Connected to move_base server.")

        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        self.explore_state = False

    def move_absolute(self, x, y, theta):
        quaternion = tf.transformations.quaternion_from_euler(0, 0, theta)
        rospy.loginfo("Absolute Move - Goal: x={}, y={}, yaw={}".format(x, y, theta))
        self.send_goal(x, y, quaternion)

    def send_goal(self, x, y, quaternion):
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = x
        goal.target_pose.pose.position.y = y
        goal.target_pose.pose.orientation.x = quaternion[0]
        goal.target_pose.pose.orientation.y = quaternion[1]
        goal.target_pose.pose.orientation.z = quaternion[2]
        goal.target_pose.pose.orientation.w = quaternion[3]

        rospy.loginfo("Sending goal location to x: {}, y: {}".format(x, y))
        self.client.send_goal(goal, done_cb=self.done_callback)

    def done_callback(self, status, result):
        if status == actionlib.GoalStatus.SUCCEEDED:
            rospy.loginfo("Reached goal!")
        else:
            rospy.logwarn("Failed to reach goal with status: {}".format(status))

    def stop_robot(self):
        self.client.cancel_all_goals()
        stop_twist = Twist()
        self.cmd_vel_pub.publish(stop_twist)
        rospy.loginfo("Stopping the robot.")

    def toggle_explore(self):
        if self.explore_state:
            rospy.loginfo("Stopping explore_lite...")
            os.system("rosnode kill /explore")
            self.explore_state = False
        else:
            rospy.loginfo("Starting explore_lite...")
            os.system("roslaunch explore_lite explore.launch &")
            self.explore_state = True

