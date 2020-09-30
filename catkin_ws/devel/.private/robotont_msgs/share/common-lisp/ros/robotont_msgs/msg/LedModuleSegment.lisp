; Auto-generated. Do not edit!


(cl:in-package robotont_msgs-msg)


;//! \htmlinclude LedModuleSegment.msg.html

(cl:defclass <LedModuleSegment> (roslisp-msg-protocol:ros-message)
  ((idx_start
    :reader idx_start
    :initarg :idx_start
    :type cl:integer
    :initform 0)
   (colors
    :reader colors
    :initarg :colors
    :type (cl:vector robotont_msgs-msg:ColorRGB)
   :initform (cl:make-array 0 :element-type 'robotont_msgs-msg:ColorRGB :initial-element (cl:make-instance 'robotont_msgs-msg:ColorRGB))))
)

(cl:defclass LedModuleSegment (<LedModuleSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedModuleSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedModuleSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotont_msgs-msg:<LedModuleSegment> is deprecated: use robotont_msgs-msg:LedModuleSegment instead.")))

(cl:ensure-generic-function 'idx_start-val :lambda-list '(m))
(cl:defmethod idx_start-val ((m <LedModuleSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:idx_start-val is deprecated.  Use robotont_msgs-msg:idx_start instead.")
  (idx_start m))

(cl:ensure-generic-function 'colors-val :lambda-list '(m))
(cl:defmethod colors-val ((m <LedModuleSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:colors-val is deprecated.  Use robotont_msgs-msg:colors instead.")
  (colors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedModuleSegment>) ostream)
  "Serializes a message object of type '<LedModuleSegment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idx_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idx_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idx_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idx_start)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'colors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedModuleSegment>) istream)
  "Deserializes a message object of type '<LedModuleSegment>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idx_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idx_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idx_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idx_start)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotont_msgs-msg:ColorRGB))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedModuleSegment>)))
  "Returns string type for a message object of type '<LedModuleSegment>"
  "robotont_msgs/LedModuleSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedModuleSegment)))
  "Returns string type for a message object of type 'LedModuleSegment"
  "robotont_msgs/LedModuleSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedModuleSegment>)))
  "Returns md5sum for a message object of type '<LedModuleSegment>"
  "074116e38328a837ef6928799ed4707a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedModuleSegment)))
  "Returns md5sum for a message object of type 'LedModuleSegment"
  "074116e38328a837ef6928799ed4707a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedModuleSegment>)))
  "Returns full string definition for message of type '<LedModuleSegment>"
  (cl:format cl:nil "uint32 idx_start~%robotont_msgs/ColorRGB[] colors~%~%================================================================================~%MSG: robotont_msgs/ColorRGB~%#Red, Green, Blue intensities in range of 0-255.~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedModuleSegment)))
  "Returns full string definition for message of type 'LedModuleSegment"
  (cl:format cl:nil "uint32 idx_start~%robotont_msgs/ColorRGB[] colors~%~%================================================================================~%MSG: robotont_msgs/ColorRGB~%#Red, Green, Blue intensities in range of 0-255.~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedModuleSegment>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedModuleSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'LedModuleSegment
    (cl:cons ':idx_start (idx_start msg))
    (cl:cons ':colors (colors msg))
))
