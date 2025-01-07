;; Auto-generated. Do not edit!


(when (boundp 'scout_mini_msgs::FaultState)
  (if (not (find-package "SCOUT_MINI_MSGS"))
    (make-package "SCOUT_MINI_MSGS"))
  (shadow 'FaultState (find-package "SCOUT_MINI_MSGS")))
(unless (find-package "SCOUT_MINI_MSGS::FAULTSTATE")
  (make-package "SCOUT_MINI_MSGS::FAULTSTATE"))

(in-package "ROS")
;;//! \htmlinclude FaultState.msg.html


(defclass scout_mini_msgs::FaultState
  :super ros::object
  :slots (_battery_under_voltage_failure _battery_under_voltage_alarm _loss_remote_control ))

(defmethod scout_mini_msgs::FaultState
  (:init
   (&key
    ((:battery_under_voltage_failure __battery_under_voltage_failure) nil)
    ((:battery_under_voltage_alarm __battery_under_voltage_alarm) nil)
    ((:loss_remote_control __loss_remote_control) nil)
    )
   (send-super :init)
   (setq _battery_under_voltage_failure __battery_under_voltage_failure)
   (setq _battery_under_voltage_alarm __battery_under_voltage_alarm)
   (setq _loss_remote_control __loss_remote_control)
   self)
  (:battery_under_voltage_failure
   (&optional (__battery_under_voltage_failure :null))
   (if (not (eq __battery_under_voltage_failure :null)) (setq _battery_under_voltage_failure __battery_under_voltage_failure)) _battery_under_voltage_failure)
  (:battery_under_voltage_alarm
   (&optional (__battery_under_voltage_alarm :null))
   (if (not (eq __battery_under_voltage_alarm :null)) (setq _battery_under_voltage_alarm __battery_under_voltage_alarm)) _battery_under_voltage_alarm)
  (:loss_remote_control
   (&optional (__loss_remote_control :null))
   (if (not (eq __loss_remote_control :null)) (setq _loss_remote_control __loss_remote_control)) _loss_remote_control)
  (:serialization-length
   ()
   (+
    ;; bool _battery_under_voltage_failure
    1
    ;; bool _battery_under_voltage_alarm
    1
    ;; bool _loss_remote_control
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _battery_under_voltage_failure
       (if _battery_under_voltage_failure (write-byte -1 s) (write-byte 0 s))
     ;; bool _battery_under_voltage_alarm
       (if _battery_under_voltage_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _loss_remote_control
       (if _loss_remote_control (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _battery_under_voltage_failure
     (setq _battery_under_voltage_failure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _battery_under_voltage_alarm
     (setq _battery_under_voltage_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _loss_remote_control
     (setq _loss_remote_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get scout_mini_msgs::FaultState :md5sum-) "a52d9af2999a855a1496f62180e48a82")
(setf (get scout_mini_msgs::FaultState :datatype-) "scout_mini_msgs/FaultState")
(setf (get scout_mini_msgs::FaultState :definition-)
      "bool battery_under_voltage_failure
bool battery_under_voltage_alarm 
bool loss_remote_control
")



(provide :scout_mini_msgs/FaultState "a52d9af2999a855a1496f62180e48a82")


