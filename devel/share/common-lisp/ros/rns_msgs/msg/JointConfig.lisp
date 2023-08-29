; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude JointConfig.msg.html

(cl:defclass <JointConfig> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (P
    :reader P
    :initarg :P
    :type cl:float
    :initform 0.0)
   (I
    :reader I
    :initarg :I
    :type cl:float
    :initform 0.0)
   (D
    :reader D
    :initarg :D
    :type cl:float
    :initform 0.0)
   (rate
    :reader rate
    :initarg :rate
    :type cl:float
    :initform 0.0)
   (max_velocity
    :reader max_velocity
    :initarg :max_velocity
    :type cl:float
    :initform 0.0)
   (lower_bound
    :reader lower_bound
    :initarg :lower_bound
    :type cl:float
    :initform 0.0)
   (upper_bound
    :reader upper_bound
    :initarg :upper_bound
    :type cl:float
    :initform 0.0)
   (limit_position
    :reader limit_position
    :initarg :limit_position
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JointConfig (<JointConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<JointConfig> is deprecated: use rns_msgs-msg:JointConfig instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <JointConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:channel-val is deprecated.  Use rns_msgs-msg:channel instead.")
  (channel m))

(cl:ensure-generic-function 'P-val :lambda-list '(m))
(cl:defmethod P-val ((m <JointConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:P-val is deprecated.  Use rns_msgs-msg:P instead.")
  (P m))

(cl:ensure-generic-function 'I-val :lambda-list '(m))
(cl:defmethod I-val ((m <JointConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:I-val is deprecated.  Use rns_msgs-msg:I instead.")
  (I m))

(cl:ensure-generic-function 'D-val :lambda-list '(m))
(cl:defmethod D-val ((m <JointConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:D-val is deprecated.  Use rns_msgs-msg:D instead.")
  (D m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <JointConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:rate-val is deprecated.  Use rns_msgs-msg:rate instead.")
  (rate m))

(cl:ensure-generic-function 'max_velocity-val :lambda-list '(m))
(cl:defmethod max_velocity-val ((m <JointConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:max_velocity-val is deprecated.  Use rns_msgs-msg:max_velocity instead.")
  (max_velocity m))

(cl:ensure-generic-function 'lower_bound-val :lambda-list '(m))
(cl:defmethod lower_bound-val ((m <JointConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:lower_bound-val is deprecated.  Use rns_msgs-msg:lower_bound instead.")
  (lower_bound m))

(cl:ensure-generic-function 'upper_bound-val :lambda-list '(m))
(cl:defmethod upper_bound-val ((m <JointConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:upper_bound-val is deprecated.  Use rns_msgs-msg:upper_bound instead.")
  (upper_bound m))

(cl:ensure-generic-function 'limit_position-val :lambda-list '(m))
(cl:defmethod limit_position-val ((m <JointConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:limit_position-val is deprecated.  Use rns_msgs-msg:limit_position instead.")
  (limit_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointConfig>) ostream)
  "Serializes a message object of type '<JointConfig>"
  (cl:let* ((signed (cl:slot-value msg 'channel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'P))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'I))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lower_bound))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'upper_bound))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'limit_position) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointConfig>) istream)
  "Deserializes a message object of type '<JointConfig>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'P) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'I) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lower_bound) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upper_bound) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'limit_position) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointConfig>)))
  "Returns string type for a message object of type '<JointConfig>"
  "rns_msgs/JointConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointConfig)))
  "Returns string type for a message object of type 'JointConfig"
  "rns_msgs/JointConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointConfig>)))
  "Returns md5sum for a message object of type '<JointConfig>"
  "cf64d7b2610d4202b59257f17a594cb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointConfig)))
  "Returns md5sum for a message object of type 'JointConfig"
  "cf64d7b2610d4202b59257f17a594cb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointConfig>)))
  "Returns full string definition for message of type '<JointConfig>"
  (cl:format cl:nil "# Message describes joint parameterss~%~%# Joint channel ID~%int32 channel~%# Regulator parameters~%float32 P~%float32 I~%float32 D~%float32 rate~%~%# Joint limits~%float32 max_velocity~%float32 lower_bound~%float32 upper_bound~%bool limit_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointConfig)))
  "Returns full string definition for message of type 'JointConfig"
  (cl:format cl:nil "# Message describes joint parameterss~%~%# Joint channel ID~%int32 channel~%# Regulator parameters~%float32 P~%float32 I~%float32 D~%float32 rate~%~%# Joint limits~%float32 max_velocity~%float32 lower_bound~%float32 upper_bound~%bool limit_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointConfig>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'JointConfig
    (cl:cons ':channel (channel msg))
    (cl:cons ':P (P msg))
    (cl:cons ':I (I msg))
    (cl:cons ':D (D msg))
    (cl:cons ':rate (rate msg))
    (cl:cons ':max_velocity (max_velocity msg))
    (cl:cons ':lower_bound (lower_bound msg))
    (cl:cons ':upper_bound (upper_bound msg))
    (cl:cons ':limit_position (limit_position msg))
))
