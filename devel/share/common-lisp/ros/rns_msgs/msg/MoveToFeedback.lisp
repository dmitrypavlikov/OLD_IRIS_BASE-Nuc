; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude MoveToFeedback.msg.html

(cl:defclass <MoveToFeedback> (roslisp-msg-protocol:ros-message)
  ((recalculation
    :reader recalculation
    :initarg :recalculation
    :type cl:boolean
    :initform cl:nil)
   (obstacleIndex
    :reader obstacleIndex
    :initarg :obstacleIndex
    :type cl:integer
    :initform 0)
   (obstacleDistance
    :reader obstacleDistance
    :initarg :obstacleDistance
    :type cl:float
    :initform 0.0)
   (waypoint
    :reader waypoint
    :initarg :waypoint
    :type cl:integer
    :initform 0)
   (moverState
    :reader moverState
    :initarg :moverState
    :type cl:integer
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform "")
   (path
    :reader path
    :initarg :path
    :type rns_msgs-msg:AnnotatedPath
    :initform (cl:make-instance 'rns_msgs-msg:AnnotatedPath)))
)

(cl:defclass MoveToFeedback (<MoveToFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<MoveToFeedback> is deprecated: use rns_msgs-msg:MoveToFeedback instead.")))

(cl:ensure-generic-function 'recalculation-val :lambda-list '(m))
(cl:defmethod recalculation-val ((m <MoveToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:recalculation-val is deprecated.  Use rns_msgs-msg:recalculation instead.")
  (recalculation m))

(cl:ensure-generic-function 'obstacleIndex-val :lambda-list '(m))
(cl:defmethod obstacleIndex-val ((m <MoveToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:obstacleIndex-val is deprecated.  Use rns_msgs-msg:obstacleIndex instead.")
  (obstacleIndex m))

(cl:ensure-generic-function 'obstacleDistance-val :lambda-list '(m))
(cl:defmethod obstacleDistance-val ((m <MoveToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:obstacleDistance-val is deprecated.  Use rns_msgs-msg:obstacleDistance instead.")
  (obstacleDistance m))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <MoveToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:waypoint-val is deprecated.  Use rns_msgs-msg:waypoint instead.")
  (waypoint m))

(cl:ensure-generic-function 'moverState-val :lambda-list '(m))
(cl:defmethod moverState-val ((m <MoveToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:moverState-val is deprecated.  Use rns_msgs-msg:moverState instead.")
  (moverState m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <MoveToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:msg-val is deprecated.  Use rns_msgs-msg:msg instead.")
  (msg m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <MoveToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:path-val is deprecated.  Use rns_msgs-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToFeedback>) ostream)
  "Serializes a message object of type '<MoveToFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recalculation) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'obstacleIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obstacleDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'waypoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'moverState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToFeedback>) istream)
  "Deserializes a message object of type '<MoveToFeedback>"
    (cl:setf (cl:slot-value msg 'recalculation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obstacleIndex) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obstacleDistance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waypoint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moverState) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToFeedback>)))
  "Returns string type for a message object of type '<MoveToFeedback>"
  "rns_msgs/MoveToFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToFeedback)))
  "Returns string type for a message object of type 'MoveToFeedback"
  "rns_msgs/MoveToFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToFeedback>)))
  "Returns md5sum for a message object of type '<MoveToFeedback>"
  "e5d103605c7fc4819d625a164ef95674")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToFeedback)))
  "Returns md5sum for a message object of type 'MoveToFeedback"
  "e5d103605c7fc4819d625a164ef95674")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToFeedback>)))
  "Returns full string definition for message of type '<MoveToFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Progress~%bool recalculation~%int32 obstacleIndex~%float32 obstacleDistance~%# Current waypoint, if there is a waypoint path~%int32 waypoint~%# Mover state~%int32 moverState~%# Message for status update~%string msg~%# Current path~%rns_msgs/AnnotatedPath path~%~%================================================================================~%MSG: rns_msgs/AnnotatedPath~%std_msgs/Header header~%~%# Path request id. ~%int32 id~%# Actual path~%rns_msgs/Waypoint[] waypoints~%# Should mover take care of waypoint directions~%bool useDirections~%# If path is reversed~%bool reversed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/Waypoint~%# Desired position~%float32 x~%float32 y~%# desired direction, in radians~%float32 angle~%# Max velocity for this waypoint, -1 if no limits~%float32 maxVelocity~%# Max deviation from this waypoint~%float32 maxDeviation~%# If target position is relevant~%bool useDirection~%# Max angle deviation~%float32 angleDeviation~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToFeedback)))
  "Returns full string definition for message of type 'MoveToFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Progress~%bool recalculation~%int32 obstacleIndex~%float32 obstacleDistance~%# Current waypoint, if there is a waypoint path~%int32 waypoint~%# Mover state~%int32 moverState~%# Message for status update~%string msg~%# Current path~%rns_msgs/AnnotatedPath path~%~%================================================================================~%MSG: rns_msgs/AnnotatedPath~%std_msgs/Header header~%~%# Path request id. ~%int32 id~%# Actual path~%rns_msgs/Waypoint[] waypoints~%# Should mover take care of waypoint directions~%bool useDirections~%# If path is reversed~%bool reversed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/Waypoint~%# Desired position~%float32 x~%float32 y~%# desired direction, in radians~%float32 angle~%# Max velocity for this waypoint, -1 if no limits~%float32 maxVelocity~%# Max deviation from this waypoint~%float32 maxDeviation~%# If target position is relevant~%bool useDirection~%# Max angle deviation~%float32 angleDeviation~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToFeedback>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'msg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToFeedback
    (cl:cons ':recalculation (recalculation msg))
    (cl:cons ':obstacleIndex (obstacleIndex msg))
    (cl:cons ':obstacleDistance (obstacleDistance msg))
    (cl:cons ':waypoint (waypoint msg))
    (cl:cons ':moverState (moverState msg))
    (cl:cons ':msg (msg msg))
    (cl:cons ':path (path msg))
))
