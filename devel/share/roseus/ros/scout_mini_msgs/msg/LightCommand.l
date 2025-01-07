;; Auto-generated. Do not edit!


(when (boundp 'scout_mini_msgs::LightCommand)
  (if (not (find-package "SCOUT_MINI_MSGS"))
    (make-package "SCOUT_MINI_MSGS"))
  (shadow 'LightCommand (find-package "SCOUT_MINI_MSGS")))
(unless (find-package "SCOUT_MINI_MSGS::LIGHTCOMMAND")
  (make-package "SCOUT_MINI_MSGS::LIGHTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude LightCommand.msg.html


(intern "*NC*" (find-package "SCOUT_MINI_MSGS::LIGHTCOMMAND"))
(shadow '*NC* (find-package "SCOUT_MINI_MSGS::LIGHTCOMMAND"))
(defconstant scout_mini_msgs::LightCommand::*NC* 0)
(intern "*NO*" (find-package "SCOUT_MINI_MSGS::LIGHTCOMMAND"))
(shadow '*NO* (find-package "SCOUT_MINI_MSGS::LIGHTCOMMAND"))
(defconstant scout_mini_msgs::LightCommand::*NO* 1)
(intern "*BL*" (find-package "SCOUT_MINI_MSGS::LIGHTCOMMAND"))
(shadow '*BL* (find-package "SCOUT_MINI_MSGS::LIGHTCOMMAND"))
(defconstant scout_mini_msgs::LightCommand::*BL* 2)
(intern "*CUSTOM*" (find-package "SCOUT_MINI_MSGS::LIGHTCOMMAND"))
(shadow '*CUSTOM* (find-package "SCOUT_MINI_MSGS::LIGHTCOMMAND"))
(defconstant scout_mini_msgs::LightCommand::*CUSTOM* 3)

(defun scout_mini_msgs::LightCommand-to-symbol (const)
  (cond
        ((= const 0) 'scout_mini_msgs::LightCommand::*NC*)
        ((= const 1) 'scout_mini_msgs::LightCommand::*NO*)
        ((= const 2) 'scout_mini_msgs::LightCommand::*BL*)
        ((= const 3) 'scout_mini_msgs::LightCommand::*CUSTOM*)
        (t nil)))

(defclass scout_mini_msgs::LightCommand
  :super ros::object
  :slots (_mode _custom_brightness ))

(defmethod scout_mini_msgs::LightCommand
  (:init
   (&key
    ((:mode __mode) 0)
    ((:custom_brightness __custom_brightness) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _custom_brightness (round __custom_brightness))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:custom_brightness
   (&optional __custom_brightness)
   (if __custom_brightness (setq _custom_brightness __custom_brightness)) _custom_brightness)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _custom_brightness
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _custom_brightness
       (write-byte _custom_brightness s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _custom_brightness
     (setq _custom_brightness (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get scout_mini_msgs::LightCommand :md5sum-) "4493bb75f5a760b5b3db3934d947b466")
(setf (get scout_mini_msgs::LightCommand :datatype-) "scout_mini_msgs/LightCommand")
(setf (get scout_mini_msgs::LightCommand :definition-)
      "uint8 NC = 0
uint8 NO = 1
uint8 BL = 2
uint8 CUSTOM = 3

uint8 mode               # Lighting Mode
uint8 custom_brightness  # Only for CUSTOM mode
")



(provide :scout_mini_msgs/LightCommand "4493bb75f5a760b5b3db3934d947b466")


