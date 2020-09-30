; Auto-generated. Do not edit!


(cl:in-package robotont_msgs-msg)


;//! \htmlinclude LaserScanSplit.msg.html

(cl:defclass <LaserScanSplit> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (leftMin
    :reader leftMin
    :initarg :leftMin
    :type cl:float
    :initform 0.0)
   (centerMin
    :reader centerMin
    :initarg :centerMin
    :type cl:float
    :initform 0.0)
   (rightMin
    :reader rightMin
    :initarg :rightMin
    :type cl:float
    :initform 0.0)
   (leftMean
    :reader leftMean
    :initarg :leftMean
    :type cl:float
    :initform 0.0)
   (centerMean
    :reader centerMean
    :initarg :centerMean
    :type cl:float
    :initform 0.0)
   (rightMean
    :reader rightMean
    :initarg :rightMean
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaserScanSplit (<LaserScanSplit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserScanSplit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserScanSplit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotont_msgs-msg:<LaserScanSplit> is deprecated: use robotont_msgs-msg:LaserScanSplit instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <LaserScanSplit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:stamp-val is deprecated.  Use robotont_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'leftMin-val :lambda-list '(m))
(cl:defmethod leftMin-val ((m <LaserScanSplit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:leftMin-val is deprecated.  Use robotont_msgs-msg:leftMin instead.")
  (leftMin m))

(cl:ensure-generic-function 'centerMin-val :lambda-list '(m))
(cl:defmethod centerMin-val ((m <LaserScanSplit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:centerMin-val is deprecated.  Use robotont_msgs-msg:centerMin instead.")
  (centerMin m))

(cl:ensure-generic-function 'rightMin-val :lambda-list '(m))
(cl:defmethod rightMin-val ((m <LaserScanSplit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:rightMin-val is deprecated.  Use robotont_msgs-msg:rightMin instead.")
  (rightMin m))

(cl:ensure-generic-function 'leftMean-val :lambda-list '(m))
(cl:defmethod leftMean-val ((m <LaserScanSplit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:leftMean-val is deprecated.  Use robotont_msgs-msg:leftMean instead.")
  (leftMean m))

(cl:ensure-generic-function 'centerMean-val :lambda-list '(m))
(cl:defmethod centerMean-val ((m <LaserScanSplit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:centerMean-val is deprecated.  Use robotont_msgs-msg:centerMean instead.")
  (centerMean m))

(cl:ensure-generic-function 'rightMean-val :lambda-list '(m))
(cl:defmethod rightMean-val ((m <LaserScanSplit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotont_msgs-msg:rightMean-val is deprecated.  Use robotont_msgs-msg:rightMean instead.")
  (rightMean m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserScanSplit>) ostream)
  "Serializes a message object of type '<LaserScanSplit>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'centerMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftMean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'centerMean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightMean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserScanSplit>) istream)
  "Deserializes a message object of type '<LaserScanSplit>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftMin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'centerMin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightMin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftMean) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'centerMean) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightMean) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserScanSplit>)))
  "Returns string type for a message object of type '<LaserScanSplit>"
  "robotont_msgs/LaserScanSplit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserScanSplit)))
  "Returns string type for a message object of type 'LaserScanSplit"
  "robotont_msgs/LaserScanSplit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserScanSplit>)))
  "Returns md5sum for a message object of type '<LaserScanSplit>"
  "e8be98bfd4e98a5f589a43bafb13b609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserScanSplit)))
  "Returns md5sum for a message object of type 'LaserScanSplit"
  "e8be98bfd4e98a5f589a43bafb13b609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserScanSplit>)))
  "Returns full string definition for message of type '<LaserScanSplit>"
  (cl:format cl:nil "~%#This msg defines a message for dividing laserscan into 3 separate distances~%#It provides mean and minimum values for the three sectors.~%~%time stamp~%~%float64 leftMin~%float64 centerMin~%float64 rightMin~%~%float64 leftMean~%float64 centerMean~%float64 rightMean~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserScanSplit)))
  "Returns full string definition for message of type 'LaserScanSplit"
  (cl:format cl:nil "~%#This msg defines a message for dividing laserscan into 3 separate distances~%#It provides mean and minimum values for the three sectors.~%~%time stamp~%~%float64 leftMin~%float64 centerMin~%float64 rightMin~%~%float64 leftMean~%float64 centerMean~%float64 rightMean~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserScanSplit>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserScanSplit>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserScanSplit
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':leftMin (leftMin msg))
    (cl:cons ':centerMin (centerMin msg))
    (cl:cons ':rightMin (rightMin msg))
    (cl:cons ':leftMean (leftMean msg))
    (cl:cons ':centerMean (centerMean msg))
    (cl:cons ':rightMean (rightMean msg))
))
