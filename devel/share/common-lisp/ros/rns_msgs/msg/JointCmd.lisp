; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude JointCmd.msg.html

(cl:defclass <JointCmd> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointCmd (<JointCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<JointCmd> is deprecated: use rns_msgs-msg:JointCmd instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <JointCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:channel-val is deprecated.  Use rns_msgs-msg:channel instead.")
  (channel m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <JointCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:cmd-val is deprecated.  Use rns_msgs-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointCmd>) ostream)
  "Serializes a message object of type '<JointCmd>"
  (cl:let* ((signed (cl:slot-value msg 'channel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointCmd>) istream)
  "Deserializes a message object of type '<JointCmd>"
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
    (cl:setf (cl:slot-value msg 'cmd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointCmd>)))
  "Returns string type for a message object of type '<JointCmd>"
  "rns_msgs/JointCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCmd)))
  "Returns string type for a message object of type 'JointCmd"
  "rns_msgs/JointCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointCmd>)))
  "Returns md5sum for a message object of type '<JointCmd>"
  "c6c6db516e281ccd39d5b21f9184ccaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointCmd)))
  "Returns md5sum for a message object of type 'JointCmd"
  "c6c6db516e281ccd39d5b21f9184ccaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointCmd>)))
  "Returns full string definition for message of type '<JointCmd>"
  (cl:format cl:nil "# Joint channel ID~%int32 channel~%~%# Command for channel~%float32 cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointCmd)))
  "Returns full string definition for message of type 'JointCmd"
  (cl:format cl:nil "# Joint channel ID~%int32 channel~%~%# Command for channel~%float32 cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointCmd>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'JointCmd
    (cl:cons ':channel (channel msg))
    (cl:cons ':cmd (cmd msg))
))
