;; Auto-generated. Do not edit!


(when (boundp 'scout_mini_msgs::LightState)
  (if (not (find-package "SCOUT_MINI_MSGS"))
    (make-package "SCOUT_MINI_MSGS"))
  (shadow 'LightState (find-package "SCOUT_MINI_MSGS")))
(unless (find-package "SCOUT_MINI_MSGS::LIGHTSTATE")
  (make-package "SCOUT_MINI_MSGS::LIGHTSTATE"))

(in-package "ROS")
;;//! \htmlinclude LightState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass scout_mini_msgs::LightState
  :super ros::object
  :slots (_header _control_enable _mode _brightness ))

(defmethod scout_mini_msgs::LightState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:control_enable __control_enable) nil)
    ((:mode __mode) "")
    ((:brightness __brightness) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _control_enable __control_enable)
   (setq _mode (string __mode))
   (setq _brightness (round __brightness))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:control_enable
   (&optional (__control_enable :null))
   (if (not (eq __control_enable :null)) (setq _control_enable __control_enable)) _control_enable)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:brightness
   (&optional __brightness)
   (if __brightness (setq _brightness __brightness)) _brightness)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _control_enable
    1
    ;; string _mode
    4 (length _mode)
    ;; uint8 _brightness
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _control_enable
       (if _control_enable (write-byte -1 s) (write-byte 0 s))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; uint8 _brightness
       (write-byte _brightness s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _control_enable
     (setq _control_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _brightness
     (setq _brightness (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get scout_mini_msgs::LightState :md5sum-) "b58f85563977207a3123a9b2ba0e669d")
(setf (get scout_mini_msgs::LightState :datatype-) "scout_mini_msgs/LightState")
(setf (get scout_mini_msgs::LightState :definition-)
      "Header header

bool control_enable  # Lighting control enable flag

string mode       # The current mode (ON, OFF, BL, CUSTOM)
uint8 brightness  # The current brightness of light (0 - 100)
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



(provide :scout_mini_msgs/LightState "b58f85563977207a3123a9b2ba0e669d")


