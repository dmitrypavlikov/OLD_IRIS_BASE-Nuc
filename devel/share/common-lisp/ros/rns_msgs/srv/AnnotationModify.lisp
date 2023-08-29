; Auto-generated. Do not edit!


(cl:in-package rns_msgs-srv)


;//! \htmlinclude AnnotationModify-request.msg.html

(cl:defclass <AnnotationModify-request> (roslisp-msg-protocol:ros-message)
  ((update
    :reader update
    :initarg :update
    :type rns_msgs-msg:AnnotationUpdate
    :initform (cl:make-instance 'rns_msgs-msg:AnnotationUpdate))
   (updateByName
    :reader updateByName
    :initarg :updateByName
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AnnotationModify-request (<AnnotationModify-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotationModify-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotationModify-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<AnnotationModify-request> is deprecated: use rns_msgs-srv:AnnotationModify-request instead.")))

(cl:ensure-generic-function 'update-val :lambda-list '(m))
(cl:defmethod update-val ((m <AnnotationModify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:update-val is deprecated.  Use rns_msgs-srv:update instead.")
  (update m))

(cl:ensure-generic-function 'updateByName-val :lambda-list '(m))
(cl:defmethod updateByName-val ((m <AnnotationModify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:updateByName-val is deprecated.  Use rns_msgs-srv:updateByName instead.")
  (updateByName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotationModify-request>) ostream)
  "Serializes a message object of type '<AnnotationModify-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'update) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'updateByName) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotationModify-request>) istream)
  "Deserializes a message object of type '<AnnotationModify-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'update) istream)
    (cl:setf (cl:slot-value msg 'updateByName) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotationModify-request>)))
  "Returns string type for a service object of type '<AnnotationModify-request>"
  "rns_msgs/AnnotationModifyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotationModify-request)))
  "Returns string type for a service object of type 'AnnotationModify-request"
  "rns_msgs/AnnotationModifyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotationModify-request>)))
  "Returns md5sum for a message object of type '<AnnotationModify-request>"
  "c1b1dd6347d93bcf8dacf5e4166ca3cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotationModify-request)))
  "Returns md5sum for a message object of type 'AnnotationModify-request"
  "c1b1dd6347d93bcf8dacf5e4166ca3cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotationModify-request>)))
  "Returns full string definition for message of type '<AnnotationModify-request>"
  (cl:format cl:nil "~%AnnotationUpdate update~%bool updateByName~%~%================================================================================~%MSG: rns_msgs/AnnotationUpdate~%# Message contains annotation update~%rns_msgs/Annotation[] annotations~%~%int32 ActionAdd = 1 #;    /// Add new annotations. If they are already exist - they will be modified on server~%int32 ActionSet = 2 #;    /// Override whole annotation list~%int32 ActionDelete = 3 #; /// Delete annotations that stored in AnnotationsUpdate.annotations array. They are found by their IDs~%int32 ActionNotify = 4 #  /// Notify that there are updates for the server~%~%# takes one of aforementioned values~%int32 action~%# Current server revision~%int64 revision~%# List of updated identifiers. Actual meaning corresponds to action type~%int64[] updated~%================================================================================~%MSG: rns_msgs/Annotation~%# Standard header~%std_msgs/Header header~%# Annotation ID. It should be unique~%int64 id~%~%int32 AnnotationTypePoint = 1 #;    /// Single point~%int32 AnnotationTypeLine = 2 #;     /// Polyline~%int32 AnnotationTypePoly = 3 #;     /// FilledPolygon~%~%int32 type # one of types described in constants~%~%int64 revision~%~%geometry_msgs/Polygon area~%# Central pose~%geometry_msgs/PoseWithCovarianceStamped pose~%# Annotation size~%float32 size~%# Annotation name~%string name~%# Attached tags~%string[] tags~%# Annotation origin, i.e editor name~%string origin~%# optional field~%string description~%# If this area is restricted to move in~%bool restricted ~%# ID for complete userdata. Can be a database index~%int64 userdataID~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotationModify-request)))
  "Returns full string definition for message of type 'AnnotationModify-request"
  (cl:format cl:nil "~%AnnotationUpdate update~%bool updateByName~%~%================================================================================~%MSG: rns_msgs/AnnotationUpdate~%# Message contains annotation update~%rns_msgs/Annotation[] annotations~%~%int32 ActionAdd = 1 #;    /// Add new annotations. If they are already exist - they will be modified on server~%int32 ActionSet = 2 #;    /// Override whole annotation list~%int32 ActionDelete = 3 #; /// Delete annotations that stored in AnnotationsUpdate.annotations array. They are found by their IDs~%int32 ActionNotify = 4 #  /// Notify that there are updates for the server~%~%# takes one of aforementioned values~%int32 action~%# Current server revision~%int64 revision~%# List of updated identifiers. Actual meaning corresponds to action type~%int64[] updated~%================================================================================~%MSG: rns_msgs/Annotation~%# Standard header~%std_msgs/Header header~%# Annotation ID. It should be unique~%int64 id~%~%int32 AnnotationTypePoint = 1 #;    /// Single point~%int32 AnnotationTypeLine = 2 #;     /// Polyline~%int32 AnnotationTypePoly = 3 #;     /// FilledPolygon~%~%int32 type # one of types described in constants~%~%int64 revision~%~%geometry_msgs/Polygon area~%# Central pose~%geometry_msgs/PoseWithCovarianceStamped pose~%# Annotation size~%float32 size~%# Annotation name~%string name~%# Attached tags~%string[] tags~%# Annotation origin, i.e editor name~%string origin~%# optional field~%string description~%# If this area is restricted to move in~%bool restricted ~%# ID for complete userdata. Can be a database index~%int64 userdataID~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotationModify-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'update))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotationModify-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotationModify-request
    (cl:cons ':update (update msg))
    (cl:cons ':updateByName (updateByName msg))
))
;//! \htmlinclude AnnotationModify-response.msg.html

(cl:defclass <AnnotationModify-response> (roslisp-msg-protocol:ros-message)
  ((revision
    :reader revision
    :initarg :revision
    :type cl:integer
    :initform 0)
   (ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass AnnotationModify-response (<AnnotationModify-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotationModify-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotationModify-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<AnnotationModify-response> is deprecated: use rns_msgs-srv:AnnotationModify-response instead.")))

(cl:ensure-generic-function 'revision-val :lambda-list '(m))
(cl:defmethod revision-val ((m <AnnotationModify-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:revision-val is deprecated.  Use rns_msgs-srv:revision instead.")
  (revision m))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <AnnotationModify-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:ids-val is deprecated.  Use rns_msgs-srv:ids instead.")
  (ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotationModify-response>) ostream)
  "Serializes a message object of type '<AnnotationModify-response>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
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
   (cl:slot-value msg 'ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotationModify-response>) istream)
  "Deserializes a message object of type '<AnnotationModify-response>"
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
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotationModify-response>)))
  "Returns string type for a service object of type '<AnnotationModify-response>"
  "rns_msgs/AnnotationModifyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotationModify-response)))
  "Returns string type for a service object of type 'AnnotationModify-response"
  "rns_msgs/AnnotationModifyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotationModify-response>)))
  "Returns md5sum for a message object of type '<AnnotationModify-response>"
  "c1b1dd6347d93bcf8dacf5e4166ca3cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotationModify-response)))
  "Returns md5sum for a message object of type 'AnnotationModify-response"
  "c1b1dd6347d93bcf8dacf5e4166ca3cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotationModify-response>)))
  "Returns full string definition for message of type '<AnnotationModify-response>"
  (cl:format cl:nil "~%int64 revision~%~%~%int64[] ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotationModify-response)))
  "Returns full string definition for message of type 'AnnotationModify-response"
  (cl:format cl:nil "~%int64 revision~%~%~%int64[] ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotationModify-response>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotationModify-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotationModify-response
    (cl:cons ':revision (revision msg))
    (cl:cons ':ids (ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AnnotationModify)))
  'AnnotationModify-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AnnotationModify)))
  'AnnotationModify-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotationModify)))
  "Returns string type for a service object of type '<AnnotationModify>"
  "rns_msgs/AnnotationModify")