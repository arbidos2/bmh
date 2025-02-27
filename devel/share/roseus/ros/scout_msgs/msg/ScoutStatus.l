;; Auto-generated. Do not edit!


(when (boundp 'scout_msgs::ScoutStatus)
  (if (not (find-package "SCOUT_MSGS"))
    (make-package "SCOUT_MSGS"))
  (shadow 'ScoutStatus (find-package "SCOUT_MSGS")))
(unless (find-package "SCOUT_MSGS::SCOUTSTATUS")
  (make-package "SCOUT_MSGS::SCOUTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ScoutStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MOTOR_ID_FRONT_RIGHT*" (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(shadow '*MOTOR_ID_FRONT_RIGHT* (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(defconstant scout_msgs::ScoutStatus::*MOTOR_ID_FRONT_RIGHT* 0)
(intern "*MOTOR_ID_FRONT_LEFT*" (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(shadow '*MOTOR_ID_FRONT_LEFT* (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(defconstant scout_msgs::ScoutStatus::*MOTOR_ID_FRONT_LEFT* 1)
(intern "*MOTOR_ID_REAR_RIGHT*" (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(shadow '*MOTOR_ID_REAR_RIGHT* (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(defconstant scout_msgs::ScoutStatus::*MOTOR_ID_REAR_RIGHT* 2)
(intern "*MOTOR_ID_REAR_LEFT*" (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(shadow '*MOTOR_ID_REAR_LEFT* (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(defconstant scout_msgs::ScoutStatus::*MOTOR_ID_REAR_LEFT* 3)
(intern "*LIGHT_ID_FRONT*" (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(shadow '*LIGHT_ID_FRONT* (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(defconstant scout_msgs::ScoutStatus::*LIGHT_ID_FRONT* 0)
(intern "*LIGHT_ID_REAR*" (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(shadow '*LIGHT_ID_REAR* (find-package "SCOUT_MSGS::SCOUTSTATUS"))
(defconstant scout_msgs::ScoutStatus::*LIGHT_ID_REAR* 1)

(defun scout_msgs::ScoutStatus-to-symbol (const)
  (cond
        ((= const 0) 'scout_msgs::ScoutStatus::*MOTOR_ID_FRONT_RIGHT*)
        ((= const 1) 'scout_msgs::ScoutStatus::*MOTOR_ID_FRONT_LEFT*)
        ((= const 2) 'scout_msgs::ScoutStatus::*MOTOR_ID_REAR_RIGHT*)
        ((= const 3) 'scout_msgs::ScoutStatus::*MOTOR_ID_REAR_LEFT*)
        ((= const 0) 'scout_msgs::ScoutStatus::*LIGHT_ID_FRONT*)
        ((= const 1) 'scout_msgs::ScoutStatus::*LIGHT_ID_REAR*)
        (t nil)))

(defclass scout_msgs::ScoutStatus
  :super ros::object
  :slots (_header _linear_velocity _angular_velocity _lateral_velocity _base_state _control_mode _fault_code _battery_voltage _motor_states _driver_states _light_control_enabled _front_light_state _rear_light_state ))

(defmethod scout_msgs::ScoutStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:linear_velocity __linear_velocity) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    ((:lateral_velocity __lateral_velocity) 0.0)
    ((:base_state __base_state) 0)
    ((:control_mode __control_mode) 0)
    ((:fault_code __fault_code) 0)
    ((:battery_voltage __battery_voltage) 0.0)
    ((:motor_states __motor_states) (let (r) (dotimes (i 4) (push (instance scout_msgs::ScoutMotorState :init) r)) r))
    ((:driver_states __driver_states) (let (r) (dotimes (i 4) (push (instance scout_msgs::ScoutDriverState :init) r)) r))
    ((:light_control_enabled __light_control_enabled) nil)
    ((:front_light_state __front_light_state) (instance scout_msgs::ScoutLightState :init))
    ((:rear_light_state __rear_light_state) (instance scout_msgs::ScoutLightState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _linear_velocity (float __linear_velocity))
   (setq _angular_velocity (float __angular_velocity))
   (setq _lateral_velocity (float __lateral_velocity))
   (setq _base_state (round __base_state))
   (setq _control_mode (round __control_mode))
   (setq _fault_code (round __fault_code))
   (setq _battery_voltage (float __battery_voltage))
   (setq _motor_states __motor_states)
   (setq _driver_states __driver_states)
   (setq _light_control_enabled __light_control_enabled)
   (setq _front_light_state __front_light_state)
   (setq _rear_light_state __rear_light_state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:lateral_velocity
   (&optional __lateral_velocity)
   (if __lateral_velocity (setq _lateral_velocity __lateral_velocity)) _lateral_velocity)
  (:base_state
   (&optional __base_state)
   (if __base_state (setq _base_state __base_state)) _base_state)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:fault_code
   (&optional __fault_code)
   (if __fault_code (setq _fault_code __fault_code)) _fault_code)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:motor_states
   (&rest __motor_states)
   (if (keywordp (car __motor_states))
       (send* _motor_states __motor_states)
     (progn
       (if __motor_states (setq _motor_states (car __motor_states)))
       _motor_states)))
  (:driver_states
   (&rest __driver_states)
   (if (keywordp (car __driver_states))
       (send* _driver_states __driver_states)
     (progn
       (if __driver_states (setq _driver_states (car __driver_states)))
       _driver_states)))
  (:light_control_enabled
   (&optional (__light_control_enabled :null))
   (if (not (eq __light_control_enabled :null)) (setq _light_control_enabled __light_control_enabled)) _light_control_enabled)
  (:front_light_state
   (&rest __front_light_state)
   (if (keywordp (car __front_light_state))
       (send* _front_light_state __front_light_state)
     (progn
       (if __front_light_state (setq _front_light_state (car __front_light_state)))
       _front_light_state)))
  (:rear_light_state
   (&rest __rear_light_state)
   (if (keywordp (car __rear_light_state))
       (send* _rear_light_state __rear_light_state)
     (progn
       (if __rear_light_state (setq _rear_light_state (car __rear_light_state)))
       _rear_light_state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _linear_velocity
    8
    ;; float64 _angular_velocity
    8
    ;; float64 _lateral_velocity
    8
    ;; uint8 _base_state
    1
    ;; uint8 _control_mode
    1
    ;; uint16 _fault_code
    2
    ;; float64 _battery_voltage
    8
    ;; scout_msgs/ScoutMotorState[4] _motor_states
    (apply #'+ (send-all _motor_states :serialization-length))
    ;; scout_msgs/ScoutDriverState[4] _driver_states
    (apply #'+ (send-all _driver_states :serialization-length))
    ;; bool _light_control_enabled
    1
    ;; scout_msgs/ScoutLightState _front_light_state
    (send _front_light_state :serialization-length)
    ;; scout_msgs/ScoutLightState _rear_light_state
    (send _rear_light_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _linear_velocity
       (sys::poke _linear_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lateral_velocity
       (sys::poke _lateral_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _base_state
       (write-byte _base_state s)
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; uint16 _fault_code
       (write-word _fault_code s)
     ;; float64 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; scout_msgs/ScoutMotorState[4] _motor_states
     (dolist (elem _motor_states)
       (send elem :serialize s)
       )
     ;; scout_msgs/ScoutDriverState[4] _driver_states
     (dolist (elem _driver_states)
       (send elem :serialize s)
       )
     ;; bool _light_control_enabled
       (if _light_control_enabled (write-byte -1 s) (write-byte 0 s))
     ;; scout_msgs/ScoutLightState _front_light_state
       (send _front_light_state :serialize s)
     ;; scout_msgs/ScoutLightState _rear_light_state
       (send _rear_light_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lateral_velocity
     (setq _lateral_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _base_state
     (setq _base_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _fault_code
     (setq _fault_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; scout_msgs/ScoutMotorState[4] _motor_states
   (dotimes (i 4)
     (send (elt _motor_states i) :deserialize buf ptr-) (incf ptr- (send (elt _motor_states i) :serialization-length))
     )
   ;; scout_msgs/ScoutDriverState[4] _driver_states
   (dotimes (i 4)
     (send (elt _driver_states i) :deserialize buf ptr-) (incf ptr- (send (elt _driver_states i) :serialization-length))
     )
   ;; bool _light_control_enabled
     (setq _light_control_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; scout_msgs/ScoutLightState _front_light_state
     (send _front_light_state :deserialize buf ptr-) (incf ptr- (send _front_light_state :serialization-length))
   ;; scout_msgs/ScoutLightState _rear_light_state
     (send _rear_light_state :deserialize buf ptr-) (incf ptr- (send _rear_light_state :serialization-length))
   ;;
   self)
  )

(setf (get scout_msgs::ScoutStatus :md5sum-) "63a9fbcabc5f3e7cb432c5d09ca662be")
(setf (get scout_msgs::ScoutStatus :datatype-) "scout_msgs/ScoutStatus")
(setf (get scout_msgs::ScoutStatus :definition-)
      "Header header

int8 MOTOR_ID_FRONT_RIGHT = 0
int8 MOTOR_ID_FRONT_LEFT = 1
int8 MOTOR_ID_REAR_RIGHT = 2
int8 MOTOR_ID_REAR_LEFT = 3

int8 LIGHT_ID_FRONT = 0
int8 LIGHT_ID_REAR = 1

# motion state
float64 linear_velocity
float64 angular_velocity
float64 lateral_velocity

# base state
uint8 base_state
uint8 control_mode
uint16 fault_code
float64 battery_voltage

# motor state
ScoutMotorState[4] motor_states
# driver state
ScoutDriverState[4] driver_states

# light state
bool light_control_enabled
ScoutLightState front_light_state
ScoutLightState rear_light_state

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
MSG: scout_msgs/ScoutMotorState
float64 current
float64 rpm
float64 temperature
float64 motor_pose

================================================================================
MSG: scout_msgs/ScoutDriverState
float64 driver_voltage
float64 driver_temperature
uint8   driver_state

================================================================================
MSG: scout_msgs/ScoutLightState
uint8 mode
uint8 custom_value
")



(provide :scout_msgs/ScoutStatus "63a9fbcabc5f3e7cb432c5d09ca662be")


