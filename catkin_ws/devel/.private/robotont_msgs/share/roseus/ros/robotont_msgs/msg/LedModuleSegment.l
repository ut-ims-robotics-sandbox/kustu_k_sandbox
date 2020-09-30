;; Auto-generated. Do not edit!


(when (boundp 'robotont_msgs::LedModuleSegment)
  (if (not (find-package "ROBOTONT_MSGS"))
    (make-package "ROBOTONT_MSGS"))
  (shadow 'LedModuleSegment (find-package "ROBOTONT_MSGS")))
(unless (find-package "ROBOTONT_MSGS::LEDMODULESEGMENT")
  (make-package "ROBOTONT_MSGS::LEDMODULESEGMENT"))

(in-package "ROS")
;;//! \htmlinclude LedModuleSegment.msg.html


(defclass robotont_msgs::LedModuleSegment
  :super ros::object
  :slots (_idx_start _colors ))

(defmethod robotont_msgs::LedModuleSegment
  (:init
   (&key
    ((:idx_start __idx_start) 0)
    ((:colors __colors) (let (r) (dotimes (i 0) (push (instance robotont_msgs::ColorRGB :init) r)) r))
    )
   (send-super :init)
   (setq _idx_start (round __idx_start))
   (setq _colors __colors)
   self)
  (:idx_start
   (&optional __idx_start)
   (if __idx_start (setq _idx_start __idx_start)) _idx_start)
  (:colors
   (&rest __colors)
   (if (keywordp (car __colors))
       (send* _colors __colors)
     (progn
       (if __colors (setq _colors (car __colors)))
       _colors)))
  (:serialization-length
   ()
   (+
    ;; uint32 _idx_start
    4
    ;; robotont_msgs/ColorRGB[] _colors
    (apply #'+ (send-all _colors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _idx_start
       (write-long _idx_start s)
     ;; robotont_msgs/ColorRGB[] _colors
     (write-long (length _colors) s)
     (dolist (elem _colors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _idx_start
     (setq _idx_start (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; robotont_msgs/ColorRGB[] _colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _colors (let (r) (dotimes (i n) (push (instance robotont_msgs::ColorRGB :init) r)) r))
     (dolist (elem- _colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotont_msgs::LedModuleSegment :md5sum-) "074116e38328a837ef6928799ed4707a")
(setf (get robotont_msgs::LedModuleSegment :datatype-) "robotont_msgs/LedModuleSegment")
(setf (get robotont_msgs::LedModuleSegment :definition-)
      "uint32 idx_start
robotont_msgs/ColorRGB[] colors

================================================================================
MSG: robotont_msgs/ColorRGB
#Red, Green, Blue intensities in range of 0-255.
uint8 r
uint8 g
uint8 b

")



(provide :robotont_msgs/LedModuleSegment "074116e38328a837ef6928799ed4707a")


