; Auto-generated. Do not edit!


(cl:in-package robotont_msgs-msg)


;//! \htmlinclude LedModulePixel.msg.html

(cl:defclass <LedModulePixel> (roslisp-msg-protocol:ros-message)
  ((idx
    :reader idx
    :initarg :idx
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type robotont_msgs-msg:ColorRGB
    :initform (cl:make-instance 'robotont_msgs-msg:ColorRGB)))
)

(cl:defclass LedModulePixel (<LedModulePixel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedModulePixel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedModulePixel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotont_msgs-msg:<LedModulePixel> is deprecated: use robotont_msgs-msg:LedModulePixel instead.")))

(cl:ensure-generic-function 'idx-val :lambda-list '(m))
(cl:defmethod idx-val ((m <LedModulePixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:idx-val is deprecated.  Use robotont_msgs-msg:idx instead.")
  (idx m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <LedModulePixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:color-val is deprecated.  Use robotont_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedModulePixel>) ostream)
  "Serializes a message object of type '<LedModulePixel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idx)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedModulePixel>) istream)
  "Deserializes a message object of type '<LedModulePixel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idx)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedModulePixel>)))
  "Returns string type for a message object of type '<LedModulePixel>"
  "robotont_msgs/LedModulePixel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedModulePixel)))
  "Returns string type for a message object of type 'LedModulePixel"
  "robotont_msgs/LedModulePixel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedModulePixel>)))
  "Returns md5sum for a message object of type '<LedModulePixel>"
  "3e8715e10cbaf5916ac0df9876db527d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedModulePixel)))
  "Returns md5sum for a message object of type 'LedModulePixel"
  "3e8715e10cbaf5916ac0df9876db527d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedModulePixel>)))
  "Returns full string definition for message of type '<LedModulePixel>"
  (cl:format cl:nil "uint32 idx~%robotont_msgs/ColorRGB color~%~%================================================================================~%MSG: robotont_msgs/ColorRGB~%#Red, Green, Blue intensities in range of 0-255.~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedModulePixel)))
  "Returns full string definition for message of type 'LedModulePixel"
  (cl:format cl:nil "uint32 idx~%robotont_msgs/ColorRGB color~%~%================================================================================~%MSG: robotont_msgs/ColorRGB~%#Red, Green, Blue intensities in range of 0-255.~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedModulePixel>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedModulePixel>))
  "Converts a ROS message object to a list"
  (cl:list 'LedModulePixel
    (cl:cons ':idx (idx msg))
    (cl:cons ':color (color msg))
))
