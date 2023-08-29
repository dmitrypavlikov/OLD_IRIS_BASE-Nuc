; Auto-generated. Do not edit!


(cl:in-package rns_msgs-srv)


;//! \htmlinclude SetMap-request.msg.html

(cl:defclass <SetMap-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type rns_msgs-msg:MapContents
    :initform (cl:make-instance 'rns_msgs-msg:MapContents)))
)

(cl:defclass SetMap-request (<SetMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<SetMap-request> is deprecated: use rns_msgs-srv:SetMap-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:data-val is deprecated.  Use rns_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMap-request>) ostream)
  "Serializes a message object of type '<SetMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMap-request>) istream)
  "Deserializes a message object of type '<SetMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMap-request>)))
  "Returns string type for a service object of type '<SetMap-request>"
  "rns_msgs/SetMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMap-request)))
  "Returns string type for a service object of type 'SetMap-request"
  "rns_msgs/SetMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMap-request>)))
  "Returns md5sum for a message object of type '<SetMap-request>"
  "a0cab6c54454c8c7895007ac34c24aff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMap-request)))
  "Returns md5sum for a message object of type 'SetMap-request"
  "a0cab6c54454c8c7895007ac34c24aff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMap-request>)))
  "Returns full string definition for message of type '<SetMap-request>"
  (cl:format cl:nil "~%rns_msgs/MapContents data~%~%================================================================================~%MSG: rns_msgs/MapContents~%Header header~%rns_msgs/MapInfo info~%rns_msgs/MapPage[] pages	# Array of pages, not sorted at all~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/MapInfo~%int32 width				# Total size in pixels~%int32 height			# Total size in pixels~%float32 resolution		# Map resolution~%int32 pageSize			# Size for every page~%int32 pageDim			# Dimension for every page~%int32 numPages			# current number of allocated pages~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rns_msgs/MapPage~%int32 dim					# page dimension, power of 2~%int32 size					# page size in pixels. Likely is equal to 2^dim~%int32 x						# page X position~%int32 y						# page Y position~%rns_msgs/MapCell[] cells		# array of cells~%~%================================================================================~%MSG: rns_msgs/MapCell~%float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMap-request)))
  "Returns full string definition for message of type 'SetMap-request"
  (cl:format cl:nil "~%rns_msgs/MapContents data~%~%================================================================================~%MSG: rns_msgs/MapContents~%Header header~%rns_msgs/MapInfo info~%rns_msgs/MapPage[] pages	# Array of pages, not sorted at all~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/MapInfo~%int32 width				# Total size in pixels~%int32 height			# Total size in pixels~%float32 resolution		# Map resolution~%int32 pageSize			# Size for every page~%int32 pageDim			# Dimension for every page~%int32 numPages			# current number of allocated pages~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rns_msgs/MapPage~%int32 dim					# page dimension, power of 2~%int32 size					# page size in pixels. Likely is equal to 2^dim~%int32 x						# page X position~%int32 y						# page Y position~%rns_msgs/MapCell[] cells		# array of cells~%~%================================================================================~%MSG: rns_msgs/MapCell~%float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMap-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetMap-response.msg.html

(cl:defclass <SetMap-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass SetMap-response (<SetMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<SetMap-response> is deprecated: use rns_msgs-srv:SetMap-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:state-val is deprecated.  Use rns_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <SetMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:map-val is deprecated.  Use rns_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMap-response>) ostream)
  "Serializes a message object of type '<SetMap-response>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMap-response>) istream)
  "Deserializes a message object of type '<SetMap-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMap-response>)))
  "Returns string type for a service object of type '<SetMap-response>"
  "rns_msgs/SetMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMap-response)))
  "Returns string type for a service object of type 'SetMap-response"
  "rns_msgs/SetMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMap-response>)))
  "Returns md5sum for a message object of type '<SetMap-response>"
  "a0cab6c54454c8c7895007ac34c24aff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMap-response)))
  "Returns md5sum for a message object of type 'SetMap-response"
  "a0cab6c54454c8c7895007ac34c24aff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMap-response>)))
  "Returns full string definition for message of type '<SetMap-response>"
  (cl:format cl:nil "~%int32 state~%nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMap-response)))
  "Returns full string definition for message of type 'SetMap-response"
  (cl:format cl:nil "~%int32 state~%nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMap-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMap-response
    (cl:cons ':state (state msg))
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMap)))
  'SetMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMap)))
  'SetMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMap)))
  "Returns string type for a service object of type '<SetMap>"
  "rns_msgs/SetMap")