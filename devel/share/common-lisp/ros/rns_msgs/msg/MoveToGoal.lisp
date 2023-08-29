; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude MoveToGoal.msg.html

(cl:defclass <MoveToGoal> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (maxDistance
    :reader maxDistance
    :initarg :maxDistance
    :type cl:float
    :initform 0.0)
   (minDistance
    :reader minDistance
    :initarg :minDistance
    :type cl:float
    :initform 0.0)
   (oriented
    :reader oriented
    :initarg :oriented
    :type cl:boolean
    :initform cl:nil)
   (canVisitUnknown
    :reader canVisitUnknown
    :initarg :canVisitUnknown
    :type cl:boolean
    :initform cl:nil)
   (objectID
    :reader objectID
    :initarg :objectID
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass MoveToGoal (<MoveToGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<MoveToGoal> is deprecated: use rns_msgs-msg:MoveToGoal instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MoveToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:goal-val is deprecated.  Use rns_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'maxDistance-val :lambda-list '(m))
(cl:defmethod maxDistance-val ((m <MoveToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:maxDistance-val is deprecated.  Use rns_msgs-msg:maxDistance instead.")
  (maxDistance m))

(cl:ensure-generic-function 'minDistance-val :lambda-list '(m))
(cl:defmethod minDistance-val ((m <MoveToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:minDistance-val is deprecated.  Use rns_msgs-msg:minDistance instead.")
  (minDistance m))

(cl:ensure-generic-function 'oriented-val :lambda-list '(m))
(cl:defmethod oriented-val ((m <MoveToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:oriented-val is deprecated.  Use rns_msgs-msg:oriented instead.")
  (oriented m))

(cl:ensure-generic-function 'canVisitUnknown-val :lambda-list '(m))
(cl:defmethod canVisitUnknown-val ((m <MoveToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:canVisitUnknown-val is deprecated.  Use rns_msgs-msg:canVisitUnknown instead.")
  (canVisitUnknown m))

(cl:ensure-generic-function 'objectID-val :lambda-list '(m))
(cl:defmethod objectID-val ((m <MoveToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:objectID-val is deprecated.  Use rns_msgs-msg:objectID instead.")
  (objectID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToGoal>) ostream)
  "Serializes a message object of type '<MoveToGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'oriented) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'canVisitUnknown) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objectID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'objectID))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToGoal>) istream)
  "Deserializes a message object of type '<MoveToGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxDistance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minDistance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'oriented) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'canVisitUnknown) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objectID) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objectID)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToGoal>)))
  "Returns string type for a message object of type '<MoveToGoal>"
  "rns_msgs/MoveToGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToGoal)))
  "Returns string type for a message object of type 'MoveToGoal"
  "rns_msgs/MoveToGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToGoal>)))
  "Returns md5sum for a message object of type '<MoveToGoal>"
  "36135debe145aaf9366fe3f5283833a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToGoal)))
  "Returns md5sum for a message object of type 'MoveToGoal"
  "36135debe145aaf9366fe3f5283833a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToGoal>)))
  "Returns full string definition for message of type '<MoveToGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%geometry_msgs/PoseStamped goal~%# Maximum distance for path search~%float32 maxDistance~%# Minimal distance to be reached~%float32 minDistance~%# Set to true if target orientation is necessary~%bool oriented~%# Set to true if search can enter unknown areas~%bool canVisitUnknown~%# ID of object(s) to be followed~%int64[] objectID~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToGoal)))
  "Returns full string definition for message of type 'MoveToGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%geometry_msgs/PoseStamped goal~%# Maximum distance for path search~%float32 maxDistance~%# Minimal distance to be reached~%float32 minDistance~%# Set to true if target orientation is necessary~%bool oriented~%# Set to true if search can enter unknown areas~%bool canVisitUnknown~%# ID of object(s) to be followed~%int64[] objectID~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     4
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objectID) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToGoal
    (cl:cons ':goal (goal msg))
    (cl:cons ':maxDistance (maxDistance msg))
    (cl:cons ':minDistance (minDistance msg))
    (cl:cons ':oriented (oriented msg))
    (cl:cons ':canVisitUnknown (canVisitUnknown msg))
    (cl:cons ':objectID (objectID msg))
))
