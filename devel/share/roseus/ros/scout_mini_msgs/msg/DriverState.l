;; Auto-generated. Do not edit!


(when (boundp 'scout_mini_msgs::DriverState)
  (if (not (find-package "SCOUT_MINI_MSGS"))
    (make-package "SCOUT_MINI_MSGS"))
  (shadow 'DriverState (find-package "SCOUT_MINI_MSGS")))
(unless (find-package "SCOUT_MINI_MSGS::DRIVERSTATE")
  (make-package "SCOUT_MINI_MSGS::DRIVERSTATE"))

(in-package "ROS")
;;//! \htmlinclude DriverState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass scout_mini_msgs::DriverState
  :super ros::object
  :slots (_header _driver_voltage _driver_temperature _communication_failure _low_supply_voltage _motor_over_temperature _driver_over_current _driver_over_temperature ))

(defmethod scout_mini_msgs::DriverState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:driver_voltage __driver_voltage) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:driver_temperature __driver_temperature) (make-array 4 :initial-element 0 :element-type :integer))
    ((:communication_failure __communication_failure) (let (r) (dotimes (i 4) (push nil r)) r))
    ((:low_supply_voltage __low_supply_voltage) (let (r) (dotimes (i 4) (push nil r)) r))
    ((:motor_over_temperature __motor_over_temperature) (let (r) (dotimes (i 4) (push nil r)) r))
    ((:driver_over_current __driver_over_current) (let (r) (dotimes (i 4) (push nil r)) r))
    ((:driver_over_temperature __driver_over_temperature) (let (r) (dotimes (i 4) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _driver_voltage __driver_voltage)
   (setq _driver_temperature __driver_temperature)
   (setq _communication_failure __communication_failure)
   (setq _low_supply_voltage __low_supply_voltage)
   (setq _motor_over_temperature __motor_over_temperature)
   (setq _driver_over_current __driver_over_current)
   (setq _driver_over_temperature __driver_over_temperature)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:driver_voltage
   (&optional __driver_voltage)
   (if __driver_voltage (setq _driver_voltage __driver_voltage)) _driver_voltage)
  (:driver_temperature
   (&optional __driver_temperature)
   (if __driver_temperature (setq _driver_temperature __driver_temperature)) _driver_temperature)
  (:communication_failure
   (&optional __communication_failure)
   (if __communication_failure (setq _communication_failure __communication_failure)) _communication_failure)
  (:low_supply_voltage
   (&optional __low_supply_voltage)
   (if __low_supply_voltage (setq _low_supply_voltage __low_supply_voltage)) _low_supply_voltage)
  (:motor_over_temperature
   (&optional __motor_over_temperature)
   (if __motor_over_temperature (setq _motor_over_temperature __motor_over_temperature)) _motor_over_temperature)
  (:driver_over_current
   (&optional __driver_over_current)
   (if __driver_over_current (setq _driver_over_current __driver_over_current)) _driver_over_current)
  (:driver_over_temperature
   (&optional __driver_over_temperature)
   (if __driver_over_temperature (setq _driver_over_temperature __driver_over_temperature)) _driver_over_temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[4] _driver_voltage
    (* 8    4)
    ;; int16[4] _driver_temperature
    (* 2    4)
    ;; bool[4] _communication_failure
    (* 1    4)
    ;; bool[4] _low_supply_voltage
    (* 1    4)
    ;; bool[4] _motor_over_temperature
    (* 1    4)
    ;; bool[4] _driver_over_current
    (* 1    4)
    ;; bool[4] _driver_over_temperature
    (* 1    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[4] _driver_voltage
     (dotimes (i 4)
       (sys::poke (elt _driver_voltage i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int16[4] _driver_temperature
     (dotimes (i 4)
       (write-word (elt _driver_temperature i) s)
       )
     ;; bool[4] _communication_failure
     (dotimes (i 4)
       (if (elt _communication_failure i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[4] _low_supply_voltage
     (dotimes (i 4)
       (if (elt _low_supply_voltage i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[4] _motor_over_temperature
     (dotimes (i 4)
       (if (elt _motor_over_temperature i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[4] _driver_over_current
     (dotimes (i 4)
       (if (elt _driver_over_current i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[4] _driver_over_temperature
     (dotimes (i 4)
       (if (elt _driver_over_temperature i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[4] _driver_voltage
   (dotimes (i (length _driver_voltage))
     (setf (elt _driver_voltage i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int16[4] _driver_temperature
   (dotimes (i (length _driver_temperature))
     (setf (elt _driver_temperature i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; bool[4] _communication_failure
   (dotimes (i (length _communication_failure))
     (setf (elt _communication_failure i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[4] _low_supply_voltage
   (dotimes (i (length _low_supply_voltage))
     (setf (elt _low_supply_voltage i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[4] _motor_over_temperature
   (dotimes (i (length _motor_over_temperature))
     (setf (elt _motor_over_temperature i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[4] _driver_over_current
   (dotimes (i (length _driver_over_current))
     (setf (elt _driver_over_current i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[4] _driver_over_temperature
   (dotimes (i (length _driver_over_temperature))
     (setf (elt _driver_over_temperature i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get scout_mini_msgs::DriverState :md5sum-) "4cd26ec35543dae5ae577b0645d8050a")
(setf (get scout_mini_msgs::DriverState :datatype-) "scout_mini_msgs/DriverState")
(setf (get scout_mini_msgs::DriverState :definition-)
      "Header header

float64[4] driver_voltage
int16[4] driver_temperature
bool[4] communication_failure
bool[4] low_supply_voltage
bool[4] motor_over_temperature
bool[4] driver_over_current 
bool[4] driver_over_temperature
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

")



(provide :scout_mini_msgs/DriverState "4cd26ec35543dae5ae577b0645d8050a")


