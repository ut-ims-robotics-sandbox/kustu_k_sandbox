;; Auto-generated. Do not edit!


(when (boundp 'leap_motion_controller::Finger)
  (if (not (find-package "LEAP_MOTION_CONTROLLER"))
    (make-package "LEAP_MOTION_CONTROLLER"))
  (shadow 'Finger (find-package "LEAP_MOTION_CONTROLLER")))
(unless (find-package "LEAP_MOTION_CONTROLLER::FINGER")
  (make-package "LEAP_MOTION_CONTROLLER::FINGER"))

(in-package "ROS")
;;//! \htmlinclude Finger.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*TYPE_THUMB*" (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(shadow '*TYPE_THUMB* (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(defconstant leap_motion_controller::Finger::*TYPE_THUMB* 0)
(intern "*TYPE_INDEX*" (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(shadow '*TYPE_INDEX* (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(defconstant leap_motion_controller::Finger::*TYPE_INDEX* 1)
(intern "*TYPE_MIDDLE*" (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(shadow '*TYPE_MIDDLE* (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(defconstant leap_motion_controller::Finger::*TYPE_MIDDLE* 2)
(intern "*TYPE_RING*" (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(shadow '*TYPE_RING* (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(defconstant leap_motion_controller::Finger::*TYPE_RING* 3)
(intern "*TYPE_PINKY*" (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(shadow '*TYPE_PINKY* (find-package "LEAP_MOTION_CONTROLLER::FINGER"))
(defconstant leap_motion_controller::Finger::*TYPE_PINKY* 4)
(defclass leap_motion_controller::Finger
  :super ros::object
  :slots (_type _joint_position ))

(defmethod leap_motion_controller::Finger
  (:init
   (&key
    ((:type __type) 0)
    ((:joint_position __joint_position) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _joint_position __joint_position)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:joint_position
   (&rest __joint_position)
   (if (keywordp (car __joint_position))
       (send* _joint_position __joint_position)
     (progn
       (if __joint_position (setq _joint_position (car __joint_position)))
       _joint_position)))
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; geometry_msgs/Point[] _joint_position
    (apply #'+ (send-all _joint_position :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; geometry_msgs/Point[] _joint_position
     (write-long (length _joint_position) s)
     (dolist (elem _joint_position)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point[] _joint_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_position (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _joint_position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get leap_motion_controller::Finger :md5sum-) "395c50f3dc2ad1331c9fa184599413c8")
(setf (get leap_motion_controller::Finger :datatype-) "leap_motion_controller/Finger")
(setf (get leap_motion_controller::Finger :definition-)
      "uint8 TYPE_THUMB = 0
uint8 TYPE_INDEX = 1
uint8 TYPE_MIDDLE = 2
uint8 TYPE_RING = 3
uint8 TYPE_PINKY = 4

uint8 type
geometry_msgs/Point[] joint_position
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :leap_motion_controller/Finger "395c50f3dc2ad1331c9fa184599413c8")


