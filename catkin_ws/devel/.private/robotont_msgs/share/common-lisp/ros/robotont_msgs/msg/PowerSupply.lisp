; Auto-generated. Do not edit!


(cl:in-package robotont_msgs-msg)


;//! \htmlinclude PowerSupply.msg.html

(cl:defclass <PowerSupply> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (estop_pressed
    :reader estop_pressed
    :initarg :estop_pressed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PowerSupply (<PowerSupply>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerSupply>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerSupply)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotont_msgs-msg:<PowerSupply> is deprecated: use robotont_msgs-msg:PowerSupply instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <PowerSupply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:current-val is deprecated.  Use robotont_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <PowerSupply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:voltage-val is deprecated.  Use robotont_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'estop_pressed-val :lambda-list '(m))
(cl:defmethod estop_pressed-val ((m <PowerSupply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:estop_pressed-val is deprecated.  Use robotont_msgs-msg:estop_pressed instead.")
  (estop_pressed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerSupply>) ostream)
  "Serializes a message object of type '<PowerSupply>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'estop_pressed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerSupply>) istream)
  "Deserializes a message object of type '<PowerSupply>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'estop_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerSupply>)))
  "Returns string type for a message object of type '<PowerSupply>"
  "robotont_msgs/PowerSupply")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerSupply)))
  "Returns string type for a message object of type 'PowerSupply"
  "robotont_msgs/PowerSupply")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerSupply>)))
  "Returns md5sum for a message object of type '<PowerSupply>"
  "77b9b8496ff236da784fb46719fa61bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerSupply)))
  "Returns md5sum for a message object of type 'PowerSupply"
  "77b9b8496ff236da784fb46719fa61bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerSupply>)))
  "Returns full string definition for message of type '<PowerSupply>"
  (cl:format cl:nil "# Measured current consumption ~%float32 current~%~%# Measured voltage level of the battery~%float32 voltage~%~%# Indicates whether e-stop button is pressed or not~%bool estop_pressed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerSupply)))
  "Returns full string definition for message of type 'PowerSupply"
  (cl:format cl:nil "# Measured current consumption ~%float32 current~%~%# Measured voltage level of the battery~%float32 voltage~%~%# Indicates whether e-stop button is pressed or not~%bool estop_pressed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerSupply>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerSupply>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerSupply
    (cl:cons ':current (current msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':estop_pressed (estop_pressed msg))
))
