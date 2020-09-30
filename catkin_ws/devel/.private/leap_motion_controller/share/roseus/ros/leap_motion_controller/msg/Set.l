;; Auto-generated. Do not edit!


(when (boundp 'leap_motion_controller::Set)
  (if (not (find-package "LEAP_MOTION_CONTROLLER"))
    (make-package "LEAP_MOTION_CONTROLLER"))
  (shadow 'Set (find-package "LEAP_MOTION_CONTROLLER")))
(unless (find-package "LEAP_MOTION_CONTROLLER::SET")
  (make-package "LEAP_MOTION_CONTROLLER::SET"))

(in-package "ROS")
;;//! \htmlinclude Set.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leap_motion_controller::Set
  :super ros::object
  :slots (_header _left_hand _right_hand _extended_fingers ))

(defmethod leap_motion_controller::Set
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_hand __left_hand) (instance leap_motion_controller::Hand :init))
    ((:right_hand __right_hand) (instance leap_motion_controller::Hand :init))
    ((:extended_fingers __extended_fingers) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_hand __left_hand)
   (setq _right_hand __right_hand)
   (setq _extended_fingers (round __extended_fingers))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_hand
   (&rest __left_hand)
   (if (keywordp (car __left_hand))
       (send* _left_hand __left_hand)
     (progn
       (if __left_hand (setq _left_hand (car __left_hand)))
       _left_hand)))
  (:right_hand
   (&rest __right_hand)
   (if (keywordp (car __right_hand))
       (send* _right_hand __right_hand)
     (progn
       (if __right_hand (setq _right_hand (car __right_hand)))
       _right_hand)))
  (:extended_fingers
   (&optional __extended_fingers)
   (if __extended_fingers (setq _extended_fingers __extended_fingers)) _extended_fingers)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; leap_motion_controller/Hand _left_hand
    (send _left_hand :serialization-length)
    ;; leap_motion_controller/Hand _right_hand
    (send _right_hand :serialization-length)
    ;; uint8 _extended_fingers
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; leap_motion_controller/Hand _left_hand
       (send _left_hand :serialize s)
     ;; leap_motion_controller/Hand _right_hand
       (send _right_hand :serialize s)
     ;; uint8 _extended_fingers
       (write-byte _extended_fingers s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; leap_motion_controller/Hand _left_hand
     (send _left_hand :deserialize buf ptr-) (incf ptr- (send _left_hand :serialization-length))
   ;; leap_motion_controller/Hand _right_hand
     (send _right_hand :deserialize buf ptr-) (incf ptr- (send _right_hand :serialization-length))
   ;; uint8 _extended_fingers
     (setq _extended_fingers (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get leap_motion_controller::Set :md5sum-) "a1f63767b76560dd9b983103a3c6a895")
(setf (get leap_motion_controller::Set :datatype-) "leap_motion_controller/Set")
(setf (get leap_motion_controller::Set :definition-)
      "# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:
#    z forward
#    x right
#    y down

std_msgs/Header header

leap_motion_controller/Hand left_hand

leap_motion_controller/Hand right_hand

uint8 extended_fingers
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: leap_motion_controller/Hand
# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:
#    z forward
#    x right
#    y down

bool is_present					# TRUE if this hand is a valid hand (left or right), FALSE otherwise.
geometry_msgs/PoseStamped palm_pose		# Contains the center position of the palm in meters from the Leap Motion Controller origin and the quaternion orientation of the palm.
geometry_msgs/Vector3Stamped palm_velocity	# The rate of change of the palm position in meters per second. 
float32 sphere_radius				# The radius of a sphere fit to the curvature of this hand. This sphere is placed roughly as if the hand were holding a ball. Thus the size of the sphere decreases as the fingers are curled into a fist.
float32 pinch_strength				# The strength is zero for an open hand, and blends to 1.0 when a pinching hand pose is recognized.
bool key_tap					# TRUE if KEY_TAP gesture has been detected on this hand, FALSE otherwise.
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :leap_motion_controller/Set "a1f63767b76560dd9b983103a3c6a895")


