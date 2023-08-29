; Auto-generated. Do not edit!


(cl:in-package rns_msgs-srv)


;//! \htmlinclude AnnotationRequest-request.msg.html

(cl:defclass <AnnotationRequest-request> (roslisp-msg-protocol:ros-message)
  ((full
    :reader full
    :initarg :full
    :type cl:boolean
    :initform cl:nil)
   (ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (filter
    :reader filter
    :initarg :filter
    :type cl:string
    :initform "")
   (restricted_only
    :reader restricted_only
    :initarg :restricted_only
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AnnotationRequest-request (<AnnotationRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotationRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotationRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<AnnotationRequest-request> is deprecated: use rns_msgs-srv:AnnotationRequest-request instead.")))

(cl:ensure-generic-function 'full-val :lambda-list '(m))
(cl:defmethod full-val ((m <AnnotationRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:full-val is deprecated.  Use rns_msgs-srv:full instead.")
  (full m))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <AnnotationRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:ids-val is deprecated.  Use rns_msgs-srv:ids instead.")
  (ids m))

(cl:ensure-generic-function 'filter-val :lambda-list '(m))
(cl:defmethod filter-val ((m <AnnotationRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:filter-val is deprecated.  Use rns_msgs-srv:filter instead.")
  (filter m))

(cl:ensure-generic-function 'restricted_only-val :lambda-list '(m))
(cl:defmethod restricted_only-val ((m <AnnotationRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:restricted_only-val is deprecated.  Use rns_msgs-srv:restricted_only instead.")
  (restricted_only m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotationRequest-request>) ostream)
  "Serializes a message object of type '<AnnotationRequest-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'full) 1 0)) ostream)
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filter))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'restricted_only) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotationRequest-request>) istream)
  "Deserializes a message object of type '<AnnotationRequest-request>"
    (cl:setf (cl:slot-value msg 'full) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'restricted_only) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotationRequest-request>)))
  "Returns string type for a service object of type '<AnnotationRequest-request>"
  "rns_msgs/AnnotationRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotationRequest-request)))
  "Returns string type for a service object of type 'AnnotationRequest-request"
  "rns_msgs/AnnotationRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotationRequest-request>)))
  "Returns md5sum for a message object of type '<AnnotationRequest-request>"
  "dd246964568ef4be2c20b91dcd74fd2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotationRequest-request)))
  "Returns md5sum for a message object of type 'AnnotationRequest-request"
  "dd246964568ef4be2c20b91dcd74fd2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotationRequest-request>)))
  "Returns full string definition for message of type '<AnnotationRequest-request>"
  (cl:format cl:nil "bool full~%int64[] ids~%~%~%string filter~%~%bool restricted_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotationRequest-request)))
  "Returns full string definition for message of type 'AnnotationRequest-request"
  (cl:format cl:nil "bool full~%int64[] ids~%~%~%string filter~%~%bool restricted_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotationRequest-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'filter))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotationRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotationRequest-request
    (cl:cons ':full (full msg))
    (cl:cons ':ids (ids msg))
    (cl:cons ':filter (filter msg))
    (cl:cons ':restricted_only (restricted_only msg))
))
;//! \htmlinclude AnnotationRequest-response.msg.html

(cl:defclass <AnnotationRequest-response> (roslisp-msg-protocol:ros-message)
  ((update
    :reader update
    :initarg :update
    :type rns_msgs-msg:AnnotationUpdate
    :initform (cl:make-instance 'rns_msgs-msg:AnnotationUpdate)))
)

(cl:defclass AnnotationRequest-response (<AnnotationRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotationRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotationRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<AnnotationRequest-response> is deprecated: use rns_msgs-srv:AnnotationRequest-response instead.")))

(cl:ensure-generic-function 'update-val :lambda-list '(m))
(cl:defmethod update-val ((m <AnnotationRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:update-val is deprecated.  Use rns_msgs-srv:update instead.")
  (update m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotationRequest-response>) ostream)
  "Serializes a message object of type '<AnnotationRequest-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'update) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotationRequest-response>) istream)
  "Deserializes a message object of type '<AnnotationRequest-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'update) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotationRequest-response>)))
  "Returns string type for a service object of type '<AnnotationRequest-response>"
  "rns_msgs/AnnotationRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotationRequest-response)))
  "Returns string type for a service object of type 'AnnotationRequest-response"
  "rns_msgs/AnnotationRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotationRequest-response>)))
  "Returns md5sum for a message object of type '<AnnotationRequest-response>"
  "dd246964568ef4be2c20b91dcd74fd2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotationRequest-response)))
  "Returns md5sum for a message object of type 'AnnotationRequest-response"
  "dd246964568ef4be2c20b91dcd74fd2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotationRequest-response>)))
  "Returns full string definition for message of type '<AnnotationRequest-response>"
  (cl:format cl:nil "AnnotationUpdate update~%~%~%================================================================================~%MSG: rns_msgs/AnnotationUpdate~%# Message contains annotation update~%rns_msgs/Annotation[] annotations~%~%int32 ActionAdd = 1 #;    /// Add new annotations. If they are already exist - they will be modified on server~%int32 ActionSet = 2 #;    /// Override whole annotation list~%int32 ActionDelete = 3 #; /// Delete annotations that stored in AnnotationsUpdate.annotations array. They are found by their IDs~%int32 ActionNotify = 4 #  /// Notify that there are updates for the server~%~%# takes one of aforementioned values~%int32 action~%# Current server revision~%int64 revision~%# List of updated identifiers. Actual meaning corresponds to action type~%int64[] updated~%================================================================================~%MSG: rns_msgs/Annotation~%# Standard header~%std_msgs/Header header~%# Annotation ID. It should be unique~%int64 id~%~%int32 AnnotationTypePoint = 1 #;    /// Single point~%int32 AnnotationTypeLine = 2 #;     /// Polyline~%int32 AnnotationTypePoly = 3 #;     /// FilledPolygon~%~%int32 type # one of types described in constants~%~%int64 revision~%~%geometry_msgs/Polygon area~%# Central pose~%geometry_msgs/PoseWithCovarianceStamped pose~%# Annotation size~%float32 size~%# Annotation name~%string name~%# Attached tags~%string[] tags~%# Annotation origin, i.e editor name~%string origin~%# optional field~%string description~%# If this area is restricted to move in~%bool restricted ~%# ID for complete userdata. Can be a database index~%int64 userdataID~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotationRequest-response)))
  "Returns full string definition for message of type 'AnnotationRequest-response"
  (cl:format cl:nil "AnnotationUpdate update~%~%~%================================================================================~%MSG: rns_msgs/AnnotationUpdate~%# Message contains annotation update~%rns_msgs/Annotation[] annotations~%~%int32 ActionAdd = 1 #;    /// Add new annotations. If they are already exist - they will be modified on server~%int32 ActionSet = 2 #;    /// Override whole annotation list~%int32 ActionDelete = 3 #; /// Delete annotations that stored in AnnotationsUpdate.annotations array. They are found by their IDs~%int32 ActionNotify = 4 #  /// Notify that there are updates for the server~%~%# takes one of aforementioned values~%int32 action~%# Current server revision~%int64 revision~%# List of updated identifiers. Actual meaning corresponds to action type~%int64[] updated~%================================================================================~%MSG: rns_msgs/Annotation~%# Standard header~%std_msgs/Header header~%# Annotation ID. It should be unique~%int64 id~%~%int32 AnnotationTypePoint = 1 #;    /// Single point~%int32 AnnotationTypeLine = 2 #;     /// Polyline~%int32 AnnotationTypePoly = 3 #;     /// FilledPolygon~%~%int32 type # one of types described in constants~%~%int64 revision~%~%geometry_msgs/Polygon area~%# Central pose~%geometry_msgs/PoseWithCovarianceStamped pose~%# Annotation size~%float32 size~%# Annotation name~%string name~%# Attached tags~%string[] tags~%# Annotation origin, i.e editor name~%string origin~%# optional field~%string description~%# If this area is restricted to move in~%bool restricted ~%# ID for complete userdata. Can be a database index~%int64 userdataID~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotationRequest-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'update))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotationRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotationRequest-response
    (cl:cons ':update (update msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AnnotationRequest)))
  'AnnotationRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AnnotationRequest)))
  'AnnotationRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotationRequest)))
  "Returns string type for a service object of type '<AnnotationRequest>"
  "rns_msgs/AnnotationRequest")