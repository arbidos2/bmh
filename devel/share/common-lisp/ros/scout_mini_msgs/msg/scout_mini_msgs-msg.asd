
(cl:in-package :asdf)

(defsystem "scout_mini_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DriverState" :depends-on ("_package_DriverState"))
    (:file "_package_DriverState" :depends-on ("_package"))
    (:file "FaultState" :depends-on ("_package_FaultState"))
    (:file "_package_FaultState" :depends-on ("_package"))
    (:file "LightCommand" :depends-on ("_package_LightCommand"))
    (:file "_package_LightCommand" :depends-on ("_package"))
    (:file "LightState" :depends-on ("_package_LightState"))
    (:file "_package_LightState" :depends-on ("_package"))
    (:file "MotorState" :depends-on ("_package_MotorState"))
    (:file "_package_MotorState" :depends-on ("_package"))
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
  ))