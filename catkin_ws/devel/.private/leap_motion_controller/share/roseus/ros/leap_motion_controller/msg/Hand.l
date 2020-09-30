;; Auto-generated. Do not edit!


(when (boundp 'leap_motion_controller::Hand)
  (if (not (find-package "LEAP_MOTION_CONTROLLER"))
    (make-package "LEAP_MOTION_CONTROLLER"))
  (shadow 'Hand (find-package "LEAP_MOTION_CONTROLLER")))
(unless (find-package "LEAP_MOTION_CONTROLLER::HAND")
  (make-package "LEAP_MOTION_CONTROLLER::HAND"))

(in-package "ROS")
;;//! \htmlinclude Hand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass leap_motion_controller::Hand
  :super ros::object
  :slots (_is_present _palm_pose _palm_velocity _sphere_radius _pinch_strength _key_tap ))

(defmethod leap_motion_controller::Hand
  (:init
   (&key
    ((:is_present __is_present) nil)
    ((:palm_pose __palm_pose) (instance geometry_msgs::PoseStamped :init))
    ((:palm_velocity __palm_velocity) (instance geometry_msgs::Vector3Stamped :init))
    ((:sphere_radius __sphere_radius) 0.0)
    ((:pinch_strength __pinch_strength) 0.0)
    ((:key_tap __key_tap) nil)
    )
   (send-super :init)
   (setq _is_present __is_present)
   (setq _palm_pose __palm_pose)
   (setq _palm_velocity __palm_velocity)
   (setq _sphere_radius (float __sphere_radius))
   (setq _pinch_strength (float __pinch_strength))
   (setq _key_tap __key_tap)
   self)
  (:is_present
   (&optional __is_present)
   (if __is_present (setq _is_present __is_present)) _is_present)
  (:palm_pose
   (&rest __palm_pose)
   (if (keywordp (car __palm_pose))
       (send* _palm_pose __palm_pose)
     (progn
       (if __palm_pose (setq _palm_pose (car __palm_pose)))
       _palm_pose)))
  (:palm_velocity
   (&rest __palm_velocity)
   (if (keywordp (car __palm_velocity))
       (send* _palm_velocity __palm_velocity)
     (progn
       (if __palm_velocity (setq _palm_velocity (car __palm_velocity)))
       _palm_velocity)))
  (:sphere_radius
   (&optional __sphere_radius)
   (if __sphere_radius (setq _sphere_radius __sphere_radius)) _sphere_radius)
  (:pinch_strength
   (&optional __pinch_strength)
   (if __pinch_strength (setq _pinch_strength __pinch_strength)) _pinch_strength)
  (:key_tap
   (&optional __key_tap)
   (if __key_tap (setq _key_tap __key_tap)) _key_tap)
  (:serialization-length
   ()
   (+
    ;; bool _is_present
    1
    ;; geometry_msgs/PoseStamped _palm_pose
    (send _palm_pose :serialization-length)
    ;; geometry_msgs/Vector3Stamped _palm_velocity
    (send _palm_velocity :serialization-length)
    ;; float32 _sphere_radius
    4
    ;; float32 _pinch_strength
    4
    ;; bool _key_tap
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_present
       (if _is_present (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _palm_pose
       (send _palm_pose :serialize s)
     ;; geometry_msgs/Vector3Stamped _palm_velocity
       (send _palm_velocity :serialize s)
     ;; float32 _sphere_radius
       (sys::poke _sphere_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pinch_strength
       (sys::poke _pinch_strength (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _key_tap
       (if _key_tap (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_present
     (setq _is_present (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _palm_pose
     (send _palm_pose :deserialize buf ptr-) (incf ptr- (send _palm_pose :serialization-length))
   ;; geometry_msgs/Vector3Stamped _palm_velocity
     (send _palm_velocity :deserialize buf ptr-) (incf ptr- (send _palm_velocity :serialization-length))
   ;; float32 _sphere_radius
     (setq _sphere_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pinch_strength
     (setq _pinch_strength (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _key_tap
     (setq _key_tap (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get leap_motion_controller::Hand :md5sum-) "51609a3515f052500f2602710bb2f7ae")
(setf (get leap_motion_controller::Hand :datatype-) "leap_motion_controller/Hand")
(setf (get leap_motion_controller::Hand :definition-)
      "# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:
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



(provide :leap_motion_controller/Hand "51609a3515f052500f2602710bb2f7ae")


