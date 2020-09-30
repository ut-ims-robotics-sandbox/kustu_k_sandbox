;; Auto-generated. Do not edit!


(when (boundp 'robotont_msgs::PowerSupply)
  (if (not (find-package "ROBOTONT_MSGS"))
    (make-package "ROBOTONT_MSGS"))
  (shadow 'PowerSupply (find-package "ROBOTONT_MSGS")))
(unless (find-package "ROBOTONT_MSGS::POWERSUPPLY")
  (make-package "ROBOTONT_MSGS::POWERSUPPLY"))

(in-package "ROS")
;;//! \htmlinclude PowerSupply.msg.html


(defclass robotont_msgs::PowerSupply
  :super ros::object
  :slots (_current _voltage _estop_pressed ))

(defmethod robotont_msgs::PowerSupply
  (:init
   (&key
    ((:current __current) 0.0)
    ((:voltage __voltage) 0.0)
    ((:estop_pressed __estop_pressed) nil)
    )
   (send-super :init)
   (setq _current (float __current))
   (setq _voltage (float __voltage))
   (setq _estop_pressed __estop_pressed)
   self)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:estop_pressed
   (&optional __estop_pressed)
   (if __estop_pressed (setq _estop_pressed __estop_pressed)) _estop_pressed)
  (:serialization-length
   ()
   (+
    ;; float32 _current
    4
    ;; float32 _voltage
    4
    ;; bool _estop_pressed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _estop_pressed
       (if _estop_pressed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _estop_pressed
     (setq _estop_pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotont_msgs::PowerSupply :md5sum-) "77b9b8496ff236da784fb46719fa61bb")
(setf (get robotont_msgs::PowerSupply :datatype-) "robotont_msgs/PowerSupply")
(setf (get robotont_msgs::PowerSupply :definition-)
      "# Measured current consumption 
float32 current

# Measured voltage level of the battery
float32 voltage

# Indicates whether e-stop button is pressed or not
bool estop_pressed
")



(provide :robotont_msgs/PowerSupply "77b9b8496ff236da784fb46719fa61bb")


