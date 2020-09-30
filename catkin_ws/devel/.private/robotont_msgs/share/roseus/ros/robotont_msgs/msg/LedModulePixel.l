;; Auto-generated. Do not edit!


(when (boundp 'robotont_msgs::LedModulePixel)
  (if (not (find-package "ROBOTONT_MSGS"))
    (make-package "ROBOTONT_MSGS"))
  (shadow 'LedModulePixel (find-package "ROBOTONT_MSGS")))
(unless (find-package "ROBOTONT_MSGS::LEDMODULEPIXEL")
  (make-package "ROBOTONT_MSGS::LEDMODULEPIXEL"))

(in-package "ROS")
;;//! \htmlinclude LedModulePixel.msg.html


(defclass robotont_msgs::LedModulePixel
  :super ros::object
  :slots (_idx _color ))

(defmethod robotont_msgs::LedModulePixel
  (:init
   (&key
    ((:idx __idx) 0)
    ((:color __color) (instance robotont_msgs::ColorRGB :init))
    )
   (send-super :init)
   (setq _idx (round __idx))
   (setq _color __color)
   self)
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; uint32 _idx
    4
    ;; robotont_msgs/ColorRGB _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _idx
       (write-long _idx s)
     ;; robotont_msgs/ColorRGB _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _idx
     (setq _idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; robotont_msgs/ColorRGB _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(setf (get robotont_msgs::LedModulePixel :md5sum-) "3e8715e10cbaf5916ac0df9876db527d")
(setf (get robotont_msgs::LedModulePixel :datatype-) "robotont_msgs/LedModulePixel")
(setf (get robotont_msgs::LedModulePixel :definition-)
      "uint32 idx
robotont_msgs/ColorRGB color

================================================================================
MSG: robotont_msgs/ColorRGB
#Red, Green, Blue intensities in range of 0-255.
uint8 r
uint8 g
uint8 b

")



(provide :robotont_msgs/LedModulePixel "3e8715e10cbaf5916ac0df9876db527d")


