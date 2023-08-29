; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude MapContents.msg.html

(cl:defclass <MapContents> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (info
    :reader info
    :initarg :info
    :type rns_msgs-msg:MapInfo
    :initform (cl:make-instance 'rns_msgs-msg:MapInfo))
   (pages
    :reader pages
    :initarg :pages
    :type (cl:vector rns_msgs-msg:MapPage)
   :initform (cl:make-array 0 :element-type 'rns_msgs-msg:MapPage :initial-element (cl:make-instance 'rns_msgs-msg:MapPage))))
)

(cl:defclass MapContents (<MapContents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapContents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapContents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<MapContents> is deprecated: use rns_msgs-msg:MapContents instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:header-val is deprecated.  Use rns_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <MapContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:info-val is deprecated.  Use rns_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'pages-val :lambda-list '(m))
(cl:defmethod pages-val ((m <MapContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:pages-val is deprecated.  Use rns_msgs-msg:pages instead.")
  (pages m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapContents>) ostream)
  "Serializes a message object of type '<MapContents>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pages))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pages))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapContents>) istream)
  "Deserializes a message object of type '<MapContents>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pages) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pages)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rns_msgs-msg:MapPage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapContents>)))
  "Returns string type for a message object of type '<MapContents>"
  "rns_msgs/MapContents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapContents)))
  "Returns string type for a message object of type 'MapContents"
  "rns_msgs/MapContents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapContents>)))
  "Returns md5sum for a message object of type '<MapContents>"
  "7df6b4424f17cea740a310413f98541b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapContents)))
  "Returns md5sum for a message object of type 'MapContents"
  "7df6b4424f17cea740a310413f98541b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapContents>)))
  "Returns full string definition for message of type '<MapContents>"
  (cl:format cl:nil "Header header~%rns_msgs/MapInfo info~%rns_msgs/MapPage[] pages	# Array of pages, not sorted at all~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/MapInfo~%int32 width				# Total size in pixels~%int32 height			# Total size in pixels~%float32 resolution		# Map resolution~%int32 pageSize			# Size for every page~%int32 pageDim			# Dimension for every page~%int32 numPages			# current number of allocated pages~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rns_msgs/MapPage~%int32 dim					# page dimension, power of 2~%int32 size					# page size in pixels. Likely is equal to 2^dim~%int32 x						# page X position~%int32 y						# page Y position~%rns_msgs/MapCell[] cells		# array of cells~%~%================================================================================~%MSG: rns_msgs/MapCell~%float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapContents)))
  "Returns full string definition for message of type 'MapContents"
  (cl:format cl:nil "Header header~%rns_msgs/MapInfo info~%rns_msgs/MapPage[] pages	# Array of pages, not sorted at all~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/MapInfo~%int32 width				# Total size in pixels~%int32 height			# Total size in pixels~%float32 resolution		# Map resolution~%int32 pageSize			# Size for every page~%int32 pageDim			# Dimension for every page~%int32 numPages			# current number of allocated pages~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rns_msgs/MapPage~%int32 dim					# page dimension, power of 2~%int32 size					# page size in pixels. Likely is equal to 2^dim~%int32 x						# page X position~%int32 y						# page Y position~%rns_msgs/MapCell[] cells		# array of cells~%~%================================================================================~%MSG: rns_msgs/MapCell~%float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapContents>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pages) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapContents>))
  "Converts a ROS message object to a list"
  (cl:list 'MapContents
    (cl:cons ':header (header msg))
    (cl:cons ':info (info msg))
    (cl:cons ':pages (pages msg))
))
