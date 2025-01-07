; Auto-generated. Do not edit!


(cl:in-package scout_mini_msgs-msg)


;//! \htmlinclude LightCommand.msg.html

(cl:defclass <LightCommand> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (custom_brightness
    :reader custom_brightness
    :initarg :custom_brightness
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LightCommand (<LightCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_mini_msgs-msg:<LightCommand> is deprecated: use scout_mini_msgs-msg:LightCommand instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LightCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:mode-val is deprecated.  Use scout_mini_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'custom_brightness-val :lambda-list '(m))
(cl:defmethod custom_brightness-val ((m <LightCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:custom_brightness-val is deprecated.  Use scout_mini_msgs-msg:custom_brightness instead.")
  (custom_brightness m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LightCommand>)))
    "Constants for message type '<LightCommand>"
  '((:NC . 0)
    (:NO . 1)
    (:BL . 2)
    (:CUSTOM . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LightCommand)))
    "Constants for message type 'LightCommand"
  '((:NC . 0)
    (:NO . 1)
    (:BL . 2)
    (:CUSTOM . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightCommand>) ostream)
  "Serializes a message object of type '<LightCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_brightness)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightCommand>) istream)
  "Deserializes a message object of type '<LightCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_brightness)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightCommand>)))
  "Returns string type for a message object of type '<LightCommand>"
  "scout_mini_msgs/LightCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightCommand)))
  "Returns string type for a message object of type 'LightCommand"
  "scout_mini_msgs/LightCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightCommand>)))
  "Returns md5sum for a message object of type '<LightCommand>"
  "4493bb75f5a760b5b3db3934d947b466")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightCommand)))
  "Returns md5sum for a message object of type 'LightCommand"
  "4493bb75f5a760b5b3db3934d947b466")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightCommand>)))
  "Returns full string definition for message of type '<LightCommand>"
  (cl:format cl:nil "uint8 NC = 0~%uint8 NO = 1~%uint8 BL = 2~%uint8 CUSTOM = 3~%~%uint8 mode               # Lighting Mode~%uint8 custom_brightness  # Only for CUSTOM mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightCommand)))
  "Returns full string definition for message of type 'LightCommand"
  (cl:format cl:nil "uint8 NC = 0~%uint8 NO = 1~%uint8 BL = 2~%uint8 CUSTOM = 3~%~%uint8 mode               # Lighting Mode~%uint8 custom_brightness  # Only for CUSTOM mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightCommand>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'LightCommand
    (cl:cons ':mode (mode msg))
    (cl:cons ':custom_brightness (custom_brightness msg))
))
