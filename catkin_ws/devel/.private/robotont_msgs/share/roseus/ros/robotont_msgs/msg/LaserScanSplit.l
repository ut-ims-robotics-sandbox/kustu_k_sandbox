;; Auto-generated. Do not edit!


(when (boundp 'robotont_msgs::LaserScanSplit)
  (if (not (find-package "ROBOTONT_MSGS"))
    (make-package "ROBOTONT_MSGS"))
  (shadow 'LaserScanSplit (find-package "ROBOTONT_MSGS")))
(unless (find-package "ROBOTONT_MSGS::LASERSCANSPLIT")
  (make-package "ROBOTONT_MSGS::LASERSCANSPLIT"))

(in-package "ROS")
;;//! \htmlinclude LaserScanSplit.msg.html


(defclass robotont_msgs::LaserScanSplit
  :super ros::object
  :slots (_stamp _leftMin _centerMin _rightMin _leftMean _centerMean _rightMean ))

(defmethod robotont_msgs::LaserScanSplit
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:leftMin __leftMin) 0.0)
    ((:centerMin __centerMin) 0.0)
    ((:rightMin __rightMin) 0.0)
    ((:leftMean __leftMean) 0.0)
    ((:centerMean __centerMean) 0.0)
    ((:rightMean __rightMean) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _leftMin (float __leftMin))
   (setq _centerMin (float __centerMin))
   (setq _rightMin (float __rightMin))
   (setq _leftMean (float __leftMean))
   (setq _centerMean (float __centerMean))
   (setq _rightMean (float __rightMean))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:leftMin
   (&optional __leftMin)
   (if __leftMin (setq _leftMin __leftMin)) _leftMin)
  (:centerMin
   (&optional __centerMin)
   (if __centerMin (setq _centerMin __centerMin)) _centerMin)
  (:rightMin
   (&optional __rightMin)
   (if __rightMin (setq _rightMin __rightMin)) _rightMin)
  (:leftMean
   (&optional __leftMean)
   (if __leftMean (setq _leftMean __leftMean)) _leftMean)
  (:centerMean
   (&optional __centerMean)
   (if __centerMean (setq _centerMean __centerMean)) _centerMean)
  (:rightMean
   (&optional __rightMean)
   (if __rightMean (setq _rightMean __rightMean)) _rightMean)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float64 _leftMin
    8
    ;; float64 _centerMin
    8
    ;; float64 _rightMin
    8
    ;; float64 _leftMean
    8
    ;; float64 _centerMean
    8
    ;; float64 _rightMean
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float64 _leftMin
       (sys::poke _leftMin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _centerMin
       (sys::poke _centerMin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightMin
       (sys::poke _rightMin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftMean
       (sys::poke _leftMean (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _centerMean
       (sys::poke _centerMean (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightMean
       (sys::poke _rightMean (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _leftMin
     (setq _leftMin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _centerMin
     (setq _centerMin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightMin
     (setq _rightMin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftMean
     (setq _leftMean (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _centerMean
     (setq _centerMean (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightMean
     (setq _rightMean (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robotont_msgs::LaserScanSplit :md5sum-) "e8be98bfd4e98a5f589a43bafb13b609")
(setf (get robotont_msgs::LaserScanSplit :datatype-) "robotont_msgs/LaserScanSplit")
(setf (get robotont_msgs::LaserScanSplit :definition-)
      "
#This msg defines a message for dividing laserscan into 3 separate distances
#It provides mean and minimum values for the three sectors.

time stamp

float64 leftMin
float64 centerMin
float64 rightMin

float64 leftMean
float64 centerMean
float64 rightMean

")



(provide :robotont_msgs/LaserScanSplit "e8be98bfd4e98a5f589a43bafb13b609")


