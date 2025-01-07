; Auto-generated. Do not edit!


(cl:in-package scout_mini_msgs-msg)


;//! \htmlinclude DriverState.msg.html

(cl:defclass <DriverState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (driver_voltage
    :reader driver_voltage
    :initarg :driver_voltage
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (driver_temperature
    :reader driver_temperature
    :initarg :driver_temperature
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (communication_failure
    :reader communication_failure
    :initarg :communication_failure
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 4 :element-type 'cl:boolean :initial-element cl:nil))
   (low_supply_voltage
    :reader low_supply_voltage
    :initarg :low_supply_voltage
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 4 :element-type 'cl:boolean :initial-element cl:nil))
   (motor_over_temperature
    :reader motor_over_temperature
    :initarg :motor_over_temperature
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 4 :element-type 'cl:boolean :initial-element cl:nil))
   (driver_over_current
    :reader driver_over_current
    :initarg :driver_over_current
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 4 :element-type 'cl:boolean :initial-element cl:nil))
   (driver_over_temperature
    :reader driver_over_temperature
    :initarg :driver_over_temperature
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 4 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass DriverState (<DriverState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriverState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriverState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_mini_msgs-msg:<DriverState> is deprecated: use scout_mini_msgs-msg:DriverState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:header-val is deprecated.  Use scout_mini_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'driver_voltage-val :lambda-list '(m))
(cl:defmethod driver_voltage-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:driver_voltage-val is deprecated.  Use scout_mini_msgs-msg:driver_voltage instead.")
  (driver_voltage m))

(cl:ensure-generic-function 'driver_temperature-val :lambda-list '(m))
(cl:defmethod driver_temperature-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:driver_temperature-val is deprecated.  Use scout_mini_msgs-msg:driver_temperature instead.")
  (driver_temperature m))

(cl:ensure-generic-function 'communication_failure-val :lambda-list '(m))
(cl:defmethod communication_failure-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:communication_failure-val is deprecated.  Use scout_mini_msgs-msg:communication_failure instead.")
  (communication_failure m))

(cl:ensure-generic-function 'low_supply_voltage-val :lambda-list '(m))
(cl:defmethod low_supply_voltage-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:low_supply_voltage-val is deprecated.  Use scout_mini_msgs-msg:low_supply_voltage instead.")
  (low_supply_voltage m))

(cl:ensure-generic-function 'motor_over_temperature-val :lambda-list '(m))
(cl:defmethod motor_over_temperature-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:motor_over_temperature-val is deprecated.  Use scout_mini_msgs-msg:motor_over_temperature instead.")
  (motor_over_temperature m))

(cl:ensure-generic-function 'driver_over_current-val :lambda-list '(m))
(cl:defmethod driver_over_current-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:driver_over_current-val is deprecated.  Use scout_mini_msgs-msg:driver_over_current instead.")
  (driver_over_current m))

(cl:ensure-generic-function 'driver_over_temperature-val :lambda-list '(m))
(cl:defmethod driver_over_temperature-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_mini_msgs-msg:driver_over_temperature-val is deprecated.  Use scout_mini_msgs-msg:driver_over_temperature instead.")
  (driver_over_temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriverState>) ostream)
  "Serializes a message object of type '<DriverState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'driver_voltage))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'driver_temperature))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'communication_failure))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'low_supply_voltage))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'motor_over_temperature))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'driver_over_current))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'driver_over_temperature))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriverState>) istream)
  "Deserializes a message object of type '<DriverState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'driver_voltage) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'driver_voltage)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'driver_temperature) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'driver_temperature)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  (cl:setf (cl:slot-value msg 'communication_failure) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'communication_failure)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'low_supply_voltage) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'low_supply_voltage)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'motor_over_temperature) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'motor_over_temperature)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'driver_over_current) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'driver_over_current)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'driver_over_temperature) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'driver_over_temperature)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriverState>)))
  "Returns string type for a message object of type '<DriverState>"
  "scout_mini_msgs/DriverState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriverState)))
  "Returns string type for a message object of type 'DriverState"
  "scout_mini_msgs/DriverState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriverState>)))
  "Returns md5sum for a message object of type '<DriverState>"
  "4cd26ec35543dae5ae577b0645d8050a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriverState)))
  "Returns md5sum for a message object of type 'DriverState"
  "4cd26ec35543dae5ae577b0645d8050a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriverState>)))
  "Returns full string definition for message of type '<DriverState>"
  (cl:format cl:nil "Header header~%~%float64[4] driver_voltage~%int16[4] driver_temperature~%bool[4] communication_failure~%bool[4] low_supply_voltage~%bool[4] motor_over_temperature~%bool[4] driver_over_current ~%bool[4] driver_over_temperature~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriverState)))
  "Returns full string definition for message of type 'DriverState"
  (cl:format cl:nil "Header header~%~%float64[4] driver_voltage~%int16[4] driver_temperature~%bool[4] communication_failure~%bool[4] low_supply_voltage~%bool[4] motor_over_temperature~%bool[4] driver_over_current ~%bool[4] driver_over_temperature~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriverState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'driver_voltage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'driver_temperature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'communication_failure) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'low_supply_voltage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_over_temperature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'driver_over_current) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'driver_over_temperature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriverState>))
  "Converts a ROS message object to a list"
  (cl:list 'DriverState
    (cl:cons ':header (header msg))
    (cl:cons ':driver_voltage (driver_voltage msg))
    (cl:cons ':driver_temperature (driver_temperature msg))
    (cl:cons ':communication_failure (communication_failure msg))
    (cl:cons ':low_supply_voltage (low_supply_voltage msg))
    (cl:cons ':motor_over_temperature (motor_over_temperature msg))
    (cl:cons ':driver_over_current (driver_over_current msg))
    (cl:cons ':driver_over_temperature (driver_over_temperature msg))
))
