; Auto-generated. Do not edit!


(cl:in-package scout_mini_msgs-msg)


;//! \htmlinclude FaultState.msg.html

(cl:defclass <FaultState> (roslisp-msg-protocol:ros-message)
  ((battery_under_voltage_failure
    :reader battery_under_voltage_failure
    :initarg :battery_under_voltage_failure
    :type cl:boolean
    :initform cl:nil)
   (battery_under_voltage_alarm
    :reader battery_under_voltage_alarm
    :initarg :battery_under_voltage_alarm
    :type cl:boolean
    :initform cl:nil)
   (loss_remote_control
    :reader loss_remote_control
    :initarg :loss_remote_control
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FaultState (<FaultState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaultState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaultState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_mini_msgs-msg:<FaultState> is deprecated: use scout_mini_msgs-msg:FaultState instead.")))

(cl:ensure-generic-function 'battery_under_voltage_failure-val :lambda-list '(m))
(cl:defmethod battery_under_voltage_failure-val ((m <FaultState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:battery_under_voltage_failure-val is deprecated.  Use scout_mini_msgs-msg:battery_under_voltage_failure instead.")
  (battery_under_voltage_failure m))

(cl:ensure-generic-function 'battery_under_voltage_alarm-val :lambda-list '(m))
(cl:defmethod battery_under_voltage_alarm-val ((m <FaultState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:battery_under_voltage_alarm-val is deprecated.  Use scout_mini_msgs-msg:battery_under_voltage_alarm instead.")
  (battery_under_voltage_alarm m))

(cl:ensure-generic-function 'loss_remote_control-val :lambda-list '(m))
(cl:defmethod loss_remote_control-val ((m <FaultState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:loss_remote_control-val is deprecated.  Use scout_mini_msgs-msg:loss_remote_control instead.")
  (loss_remote_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaultState>) ostream)
  "Serializes a message object of type '<FaultState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'battery_under_voltage_failure) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'battery_under_voltage_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loss_remote_control) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaultState>) istream)
  "Deserializes a message object of type '<FaultState>"
    (cl:setf (cl:slot-value msg 'battery_under_voltage_failure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'battery_under_voltage_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'loss_remote_control) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaultState>)))
  "Returns string type for a message object of type '<FaultState>"
  "scout_mini_msgs/FaultState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaultState)))
  "Returns string type for a message object of type 'FaultState"
  "scout_mini_msgs/FaultState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaultState>)))
  "Returns md5sum for a message object of type '<FaultState>"
  "a52d9af2999a855a1496f62180e48a82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaultState)))
  "Returns md5sum for a message object of type 'FaultState"
  "a52d9af2999a855a1496f62180e48a82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaultState>)))
  "Returns full string definition for message of type '<FaultState>"
  (cl:format cl:nil "bool battery_under_voltage_failure~%bool battery_under_voltage_alarm ~%bool loss_remote_control~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaultState)))
  "Returns full string definition for message of type 'FaultState"
  (cl:format cl:nil "bool battery_under_voltage_failure~%bool battery_under_voltage_alarm ~%bool loss_remote_control~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaultState>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaultState>))
  "Converts a ROS message object to a list"
  (cl:list 'FaultState
    (cl:cons ':battery_under_voltage_failure (battery_under_voltage_failure msg))
    (cl:cons ':battery_under_voltage_alarm (battery_under_voltage_alarm msg))
    (cl:cons ':loss_remote_control (loss_remote_control msg))
))
