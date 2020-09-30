;; Auto-generated. Do not edit!


(when (boundp 'robotont_msgs::ColorRGB)
  (if (not (find-package "ROBOTONT_MSGS"))
    (make-package "ROBOTONT_MSGS"))
  (shadow 'ColorRGB (find-package "ROBOTONT_MSGS")))
(unless (find-package "ROBOTONT_MSGS::COLORRGB")
  (make-package "ROBOTONT_MSGS::COLORRGB"))

(in-package "ROS")
;;//! \htmlinclude ColorRGB.msg.html


(defclass robotont_msgs::ColorRGB
  :super ros::object
  :slots (_r _g _b ))

(defmethod robotont_msgs::ColorRGB
  (:init
   (&key
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; uint8 _r
    1
    ;; uint8 _g
    1
    ;; uint8 _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _r
       (write-byte _r s)
     ;; uint8 _g
       (write-byte _g s)
     ;; uint8 _b
       (write-byte _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _r
     (setq _r (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g
     (setq _g (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotont_msgs::ColorRGB :md5sum-) "353891e354491c51aabe32df673fb446")
(setf (get robotont_msgs::ColorRGB :datatype-) "robotont_msgs/ColorRGB")
(setf (get robotont_msgs::ColorRGB :definition-)
      "#Red, Green, Blue intensities in range of 0-255.
uint8 r
uint8 g
uint8 b

")



(provide :robotont_msgs/ColorRGB "353891e354491c51aabe32df673fb446")


