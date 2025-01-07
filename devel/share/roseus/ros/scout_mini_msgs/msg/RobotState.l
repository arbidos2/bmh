;; Auto-generated. Do not edit!


(when (boundp 'scout_mini_msgs::RobotState)
  (if (not (find-package "SCOUT_MINI_MSGS"))
    (make-package "SCOUT_MINI_MSGS"))
  (shadow 'RobotState (find-package "SCOUT_MINI_MSGS")))
(unless (find-package "SCOUT_MINI_MSGS::ROBOTSTATE")
  (make-package "SCOUT_MINI_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass scout_mini_msgs::RobotState
  :super ros::object
  :slots (_header _robot _normal_state _control_mode _battery_voltage _fault_state ))

(defmethod scout_mini_msgs::RobotState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot __robot) "")
    ((:normal_state __normal_state) nil)
    ((:control_mode __control_mode) "")
    ((:battery_voltage __battery_voltage) 0.0)
    ((:fault_state __fault_state) (instance scout_mini_msgs::FaultState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot (string __robot))
   (setq _normal_state __normal_state)
   (setq _control_mode (string __control_mode))
   (setq _battery_voltage (float __battery_voltage))
   (setq _fault_state __fault_state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot
   (&optional __robot)
   (if __robot (setq _robot __robot)) _robot)
  (:normal_state
   (&optional (__normal_state :null))
   (if (not (eq __normal_state :null)) (setq _normal_state __normal_state)) _normal_state)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:fault_state
   (&rest __fault_state)
   (if (keywordp (car __fault_state))
       (send* _fault_state __fault_state)
     (progn
       (if __fault_state (setq _fault_state (car __fault_state)))
       _fault_state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot
    4 (length _robot)
    ;; bool _normal_state
    1
    ;; string _control_mode
    4 (length _control_mode)
    ;; float64 _battery_voltage
    8
    ;; scout_mini_msgs/FaultState _fault_state
    (send _fault_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _robot
       (write-long (length _robot) s) (princ _robot s)
     ;; bool _normal_state
       (if _normal_state (write-byte -1 s) (write-byte 0 s))
     ;; string _control_mode
       (write-long (length _control_mode) s) (princ _control_mode s)
     ;; float64 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; scout_mini_msgs/FaultState _fault_state
       (send _fault_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _normal_state
     (setq _normal_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _control_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; scout_mini_msgs/FaultState _fault_state
     (send _fault_state :deserialize buf ptr-) (incf ptr- (send _fault_state :serialization-length))
   ;;
   self)
  )

(setf (get scout_mini_msgs::RobotState :md5sum-) "a9ce1599ddff7c1d744e7f660dd057d2")
(setf (get scout_mini_msgs::RobotState :datatype-) "scout_mini_msgs/RobotState")
(setf (get scout_mini_msgs::RobotState :definition-)
      "Header header

string robot

bool normal_state            
string control_mode      # IDLE, CAN, REMOTE, NONE
float64 battery_voltage

scout_mini_msgs/FaultState fault_state
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: scout_mini_msgs/FaultState
bool battery_under_voltage_failure
bool battery_under_voltage_alarm 
bool loss_remote_control
")



(provide :scout_mini_msgs/RobotState "a9ce1599ddff7c1d744e7f660dd057d2")


