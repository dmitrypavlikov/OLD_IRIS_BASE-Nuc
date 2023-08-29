; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude AnnotationUpdate.msg.html

(cl:defclass <AnnotationUpdate> (roslisp-msg-protocol:ros-message)
  ((annotations
    :reader annotations
    :initarg :annotations
    :type (cl:vector rns_msgs-msg:Annotation)
   :initform (cl:make-array 0 :element-type 'rns_msgs-msg:Annotation :initial-element (cl:make-instance 'rns_msgs-msg:Annotation)))
   (action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (revision
    :reader revision
    :initarg :revision
    :type cl:integer
    :initform 0)
   (updated
    :reader updated
    :initarg :updated
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass AnnotationUpdate (<AnnotationUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotationUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotationUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<AnnotationUpdate> is deprecated: use rns_msgs-msg:AnnotationUpdate instead.")))

(cl:ensure-generic-function 'annotations-val :lambda-list '(m))
(cl:defmethod annotations-val ((m <AnnotationUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:annotations-val is deprecated.  Use rns_msgs-msg:annotations instead.")
  (annotations m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <AnnotationUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:action-val is deprecated.  Use rns_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'revision-val :lambda-list '(m))
(cl:defmethod revision-val ((m <AnnotationUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:revision-val is deprecated.  Use rns_msgs-msg:revision instead.")
  (revision m))

(cl:ensure-generic-function 'updated-val :lambda-list '(m))
(cl:defmethod updated-val ((m <AnnotationUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:updated-val is deprecated.  Use rns_msgs-msg:updated instead.")
  (updated m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AnnotationUpdate>)))
    "Constants for message type '<AnnotationUpdate>"
  '((:ACTIONADD . 1)
    (:ACTIONSET . 2)
    (:ACTIONDELETE . 3)
    (:ACTIONNOTIFY . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AnnotationUpdate)))
    "Constants for message type 'AnnotationUpdate"
  '((:ACTIONADD . 1)
    (:ACTIONSET . 2)
    (:ACTIONDELETE . 3)
    (:ACTIONNOTIFY . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotationUpdate>) ostream)
  "Serializes a message object of type '<AnnotationUpdate>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'annotations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'annotations))
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'revision)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'updated))))
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
   (cl:slot-value msg 'updated))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotationUpdate>) istream)
  "Deserializes a message object of type '<AnnotationUpdate>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'annotations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'annotations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rns_msgs-msg:Annotation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'revision) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'updated) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'updated)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotationUpdate>)))
  "Returns string type for a message object of type '<AnnotationUpdate>"
  "rns_msgs/AnnotationUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotationUpdate)))
  "Returns string type for a message object of type 'AnnotationUpdate"
  "rns_msgs/AnnotationUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotationUpdate>)))
  "Returns md5sum for a message object of type '<AnnotationUpdate>"
  "80f10fdd382829c5ed2b38f9c244c413")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotationUpdate)))
  "Returns md5sum for a message object of type 'AnnotationUpdate"
  "80f10fdd382829c5ed2b38f9c244c413")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotationUpdate>)))
  "Returns full string definition for message of type '<AnnotationUpdate>"
  (cl:format cl:nil "# Message contains annotation update~%rns_msgs/Annotation[] annotations~%~%int32 ActionAdd = 1 #;    /// Add new annotations. If they are already exist - they will be modified on server~%int32 ActionSet = 2 #;    /// Override whole annotation list~%int32 ActionDelete = 3 #; /// Delete annotations that stored in AnnotationsUpdate.annotations array. They are found by their IDs~%int32 ActionNotify = 4 #  /// Notify that there are updates for the server~%~%# takes one of aforementioned values~%int32 action~%# Current server revision~%int64 revision~%# List of updated identifiers. Actual meaning corresponds to action type~%int64[] updated~%================================================================================~%MSG: rns_msgs/Annotation~%# Standard header~%std_msgs/Header header~%# Annotation ID. It should be unique~%int64 id~%~%int32 AnnotationTypePoint = 1 #;    /// Single point~%int32 AnnotationTypeLine = 2 #;     /// Polyline~%int32 AnnotationTypePoly = 3 #;     /// FilledPolygon~%~%int32 type # one of types described in constants~%~%int64 revision~%~%geometry_msgs/Polygon area~%# Central pose~%geometry_msgs/PoseWithCovarianceStamped pose~%# Annotation size~%float32 size~%# Annotation name~%string name~%# Attached tags~%string[] tags~%# Annotation origin, i.e editor name~%string origin~%# optional field~%string description~%# If this area is restricted to move in~%bool restricted ~%# ID for complete userdata. Can be a database index~%int64 userdataID~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotationUpdate)))
  "Returns full string definition for message of type 'AnnotationUpdate"
  (cl:format cl:nil "# Message contains annotation update~%rns_msgs/Annotation[] annotations~%~%int32 ActionAdd = 1 #;    /// Add new annotations. If they are already exist - they will be modified on server~%int32 ActionSet = 2 #;    /// Override whole annotation list~%int32 ActionDelete = 3 #; /// Delete annotations that stored in AnnotationsUpdate.annotations array. They are found by their IDs~%int32 ActionNotify = 4 #  /// Notify that there are updates for the server~%~%# takes one of aforementioned values~%int32 action~%# Current server revision~%int64 revision~%# List of updated identifiers. Actual meaning corresponds to action type~%int64[] updated~%================================================================================~%MSG: rns_msgs/Annotation~%# Standard header~%std_msgs/Header header~%# Annotation ID. It should be unique~%int64 id~%~%int32 AnnotationTypePoint = 1 #;    /// Single point~%int32 AnnotationTypeLine = 2 #;     /// Polyline~%int32 AnnotationTypePoly = 3 #;     /// FilledPolygon~%~%int32 type # one of types described in constants~%~%int64 revision~%~%geometry_msgs/Polygon area~%# Central pose~%geometry_msgs/PoseWithCovarianceStamped pose~%# Annotation size~%float32 size~%# Annotation name~%string name~%# Attached tags~%string[] tags~%# Annotation origin, i.e editor name~%string origin~%# optional field~%string description~%# If this area is restricted to move in~%bool restricted ~%# ID for complete userdata. Can be a database index~%int64 userdataID~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotationUpdate>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'annotations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'updated) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotationUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotationUpdate
    (cl:cons ':annotations (annotations msg))
    (cl:cons ':action (action msg))
    (cl:cons ':revision (revision msg))
    (cl:cons ':updated (updated msg))
))
