; Auto-generated. Do not edit!


(cl:in-package scout_mini_msgs-msg)


;//! \htmlinclude LightState.msg.html

(cl:defclass <LightState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control_enable
    :reader control_enable
    :initarg :control_enable
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (brightness
    :reader brightness
    :initarg :brightness
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LightState (<LightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_mini_msgs-msg:<LightState> is deprecated: use scout_mini_msgs-msg:LightState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:header-val is deprecated.  Use scout_mini_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control_enable-val :lambda-list '(m))
(cl:defmethod control_enable-val ((m <LightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:control_enable-val is deprecated.  Use scout_mini_msgs-msg:control_enable instead.")
  (control_enable m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:mode-val is deprecated.  Use scout_mini_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <LightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:brightness-val is deprecated.  Use scout_mini_msgs-msg:brightness instead.")
  (brightness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightState>) ostream)
  "Serializes a message object of type '<LightState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'control_enable) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightState>) istream)
  "Deserializes a message object of type '<LightState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'control_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightState>)))
  "Returns string type for a message object of type '<LightState>"
  "scout_mini_msgs/LightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightState)))
  "Returns string type for a message object of type 'LightState"
  "scout_mini_msgs/LightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightState>)))
  "Returns md5sum for a message object of type '<LightState>"
  "b58f85563977207a3123a9b2ba0e669d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightState)))
  "Returns md5sum for a message object of type 'LightState"
  "b58f85563977207a3123a9b2ba0e669d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightState>)))
  "Returns full string definition for message of type '<LightState>"
  (cl:format cl:nil "Header header~%~%bool control_enable  # Lighting control enable flag~%~%string mode       # The current mode (ON, OFF, BL, CUSTOM)~%uint8 brightness  # The current brightness of light (0 - 100)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightState)))
  "Returns full string definition for message of type 'LightState"
  (cl:format cl:nil "Header header~%~%bool control_enable  # Lighting control enable flag~%~%string mode       # The current mode (ON, OFF, BL, CUSTOM)~%uint8 brightness  # The current brightness of light (0 - 100)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'mode))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightState>))
  "Converts a ROS message object to a list"
  (cl:list 'LightState
    (cl:cons ':header (header msg))
    (cl:cons ':control_enable (control_enable msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':brightness (brightness msg))
))
