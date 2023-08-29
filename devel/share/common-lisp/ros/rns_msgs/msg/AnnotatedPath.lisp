; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude AnnotatedPath.msg.html

(cl:defclass <AnnotatedPath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector rns_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'rns_msgs-msg:Waypoint :initial-element (cl:make-instance 'rns_msgs-msg:Waypoint)))
   (useDirections
    :reader useDirections
    :initarg :useDirections
    :type cl:boolean
    :initform cl:nil)
   (reversed
    :reader reversed
    :initarg :reversed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AnnotatedPath (<AnnotatedPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotatedPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotatedPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<AnnotatedPath> is deprecated: use rns_msgs-msg:AnnotatedPath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AnnotatedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:header-val is deprecated.  Use rns_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AnnotatedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:id-val is deprecated.  Use rns_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <AnnotatedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:waypoints-val is deprecated.  Use rns_msgs-msg:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'useDirections-val :lambda-list '(m))
(cl:defmethod useDirections-val ((m <AnnotatedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:useDirections-val is deprecated.  Use rns_msgs-msg:useDirections instead.")
  (useDirections m))

(cl:ensure-generic-function 'reversed-val :lambda-list '(m))
(cl:defmethod reversed-val ((m <AnnotatedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:reversed-val is deprecated.  Use rns_msgs-msg:reversed instead.")
  (reversed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotatedPath>) ostream)
  "Serializes a message object of type '<AnnotatedPath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'useDirections) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reversed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotatedPath>) istream)
  "Deserializes a message object of type '<AnnotatedPath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rns_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'useDirections) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reversed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotatedPath>)))
  "Returns string type for a message object of type '<AnnotatedPath>"
  "rns_msgs/AnnotatedPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotatedPath)))
  "Returns string type for a message object of type 'AnnotatedPath"
  "rns_msgs/AnnotatedPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotatedPath>)))
  "Returns md5sum for a message object of type '<AnnotatedPath>"
  "0b1eef100fbebb30331ce40cce8f2f13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotatedPath)))
  "Returns md5sum for a message object of type 'AnnotatedPath"
  "0b1eef100fbebb30331ce40cce8f2f13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotatedPath>)))
  "Returns full string definition for message of type '<AnnotatedPath>"
  (cl:format cl:nil "std_msgs/Header header~%~%# Path request id. ~%int32 id~%# Actual path~%rns_msgs/Waypoint[] waypoints~%# Should mover take care of waypoint directions~%bool useDirections~%# If path is reversed~%bool reversed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/Waypoint~%# Desired position~%float32 x~%float32 y~%# desired direction, in radians~%float32 angle~%# Max velocity for this waypoint, -1 if no limits~%float32 maxVelocity~%# Max deviation from this waypoint~%float32 maxDeviation~%# If target position is relevant~%bool useDirection~%# Max angle deviation~%float32 angleDeviation~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotatedPath)))
  "Returns full string definition for message of type 'AnnotatedPath"
  (cl:format cl:nil "std_msgs/Header header~%~%# Path request id. ~%int32 id~%# Actual path~%rns_msgs/Waypoint[] waypoints~%# Should mover take care of waypoint directions~%bool useDirections~%# If path is reversed~%bool reversed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/Waypoint~%# Desired position~%float32 x~%float32 y~%# desired direction, in radians~%float32 angle~%# Max velocity for this waypoint, -1 if no limits~%float32 maxVelocity~%# Max deviation from this waypoint~%float32 maxDeviation~%# If target position is relevant~%bool useDirection~%# Max angle deviation~%float32 angleDeviation~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotatedPath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotatedPath>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotatedPath
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':useDirections (useDirections msg))
    (cl:cons ':reversed (reversed msg))
))
