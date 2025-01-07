;; Auto-generated. Do not edit!


(when (boundp 'scout_mini_msgs::MotorState)
  (if (not (find-package "SCOUT_MINI_MSGS"))
    (make-package "SCOUT_MINI_MSGS"))
  (shadow 'MotorState (find-package "SCOUT_MINI_MSGS")))
(unless (find-package "SCOUT_MINI_MSGS::MOTORSTATE")
  (make-package "SCOUT_MINI_MSGS::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass scout_mini_msgs::MotorState
  :super ros::object
  :slots (_header _name _position _velocity _current _temperature ))

(defmethod scout_mini_msgs::MotorState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 4) (push "" r)) r))
    ((:position __position) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:current __current) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:temperature __temperature) (make-array 4 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _current __current)
   (setq _temperature __temperature)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[4] _name
    (apply #'+ 4 (length _name)    4)
    ;; float64[4] _position
    (* 8    4)
    ;; float64[4] _velocity
    (* 8    4)
    ;; float64[4] _current
    (* 8    4)
    ;; int16[4] _temperature
    (* 2    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[4] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[4] _position
     (dotimes (i 4)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[4] _velocity
     (dotimes (i 4)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[4] _current
     (dotimes (i 4)
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int16[4] _temperature
     (dotimes (i 4)
       (write-word (elt _temperature i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[4] _name
   (dotimes (i (length _name))
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     )
   ;; float64[4] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[4] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[4] _current
   (dotimes (i (length _current))
     (setf (elt _current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int16[4] _temperature
   (dotimes (i (length _temperature))
     (setf (elt _temperature i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get scout_mini_msgs::MotorState :md5sum-) "07febe0f25b8ad0f3f0891ded3888a7a")
(setf (get scout_mini_msgs::MotorState :datatype-) "scout_mini_msgs/MotorState")
(setf (get scout_mini_msgs::MotorState :definition-)
      "Header header

# Joint name
string[4] name

# The actual position by the encoder value (rad)
float64[4] position

# The actual velocity measured by the encoder as the actual RPM value (rad/s)
float64[4] velocity

# The current flowing through the motor (A)
float64[4] current

# The actual temperature of motor (C)
int16[4] temperature   
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



(provide :scout_mini_msgs/MotorState "07febe0f25b8ad0f3f0891ded3888a7a")


