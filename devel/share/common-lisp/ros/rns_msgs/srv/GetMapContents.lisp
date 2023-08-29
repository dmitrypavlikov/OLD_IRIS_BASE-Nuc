; Auto-generated. Do not edit!


(cl:in-package rns_msgs-srv)


;//! \htmlinclude GetMapContents-request.msg.html

(cl:defclass <GetMapContents-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetMapContents-request (<GetMapContents-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapContents-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapContents-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<GetMapContents-request> is deprecated: use rns_msgs-srv:GetMapContents-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapContents-request>) ostream)
  "Serializes a message object of type '<GetMapContents-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapContents-request>) istream)
  "Deserializes a message object of type '<GetMapContents-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapContents-request>)))
  "Returns string type for a service object of type '<GetMapContents-request>"
  "rns_msgs/GetMapContentsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapContents-request)))
  "Returns string type for a service object of type 'GetMapContents-request"
  "rns_msgs/GetMapContentsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapContents-request>)))
  "Returns md5sum for a message object of type '<GetMapContents-request>"
  "1b81e9a6831ea1bbddfe4258c942c217")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapContents-request)))
  "Returns md5sum for a message object of type 'GetMapContents-request"
  "1b81e9a6831ea1bbddfe4258c942c217")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapContents-request>)))
  "Returns full string definition for message of type '<GetMapContents-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapContents-request)))
  "Returns full string definition for message of type 'GetMapContents-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapContents-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapContents-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapContents-request
))
;//! \htmlinclude GetMapContents-response.msg.html

(cl:defclass <GetMapContents-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type rns_msgs-msg:MapContents
    :initform (cl:make-instance 'rns_msgs-msg:MapContents)))
)

(cl:defclass GetMapContents-response (<GetMapContents-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapContents-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapContents-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<GetMapContents-response> is deprecated: use rns_msgs-srv:GetMapContents-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetMapContents-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:data-val is deprecated.  Use rns_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapContents-response>) ostream)
  "Serializes a message object of type '<GetMapContents-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapContents-response>) istream)
  "Deserializes a message object of type '<GetMapContents-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapContents-response>)))
  "Returns string type for a service object of type '<GetMapContents-response>"
  "rns_msgs/GetMapContentsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapContents-response)))
  "Returns string type for a service object of type 'GetMapContents-response"
  "rns_msgs/GetMapContentsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapContents-response>)))
  "Returns md5sum for a message object of type '<GetMapContents-response>"
  "1b81e9a6831ea1bbddfe4258c942c217")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapContents-response)))
  "Returns md5sum for a message object of type 'GetMapContents-response"
  "1b81e9a6831ea1bbddfe4258c942c217")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapContents-response>)))
  "Returns full string definition for message of type '<GetMapContents-response>"
  (cl:format cl:nil "MapContents data~%~%================================================================================~%MSG: rns_msgs/MapContents~%Header header~%rns_msgs/MapInfo info~%rns_msgs/MapPage[] pages	# Array of pages, not sorted at all~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/MapInfo~%int32 width				# Total size in pixels~%int32 height			# Total size in pixels~%float32 resolution		# Map resolution~%int32 pageSize			# Size for every page~%int32 pageDim			# Dimension for every page~%int32 numPages			# current number of allocated pages~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rns_msgs/MapPage~%int32 dim					# page dimension, power of 2~%int32 size					# page size in pixels. Likely is equal to 2^dim~%int32 x						# page X position~%int32 y						# page Y position~%rns_msgs/MapCell[] cells		# array of cells~%~%================================================================================~%MSG: rns_msgs/MapCell~%float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapContents-response)))
  "Returns full string definition for message of type 'GetMapContents-response"
  (cl:format cl:nil "MapContents data~%~%================================================================================~%MSG: rns_msgs/MapContents~%Header header~%rns_msgs/MapInfo info~%rns_msgs/MapPage[] pages	# Array of pages, not sorted at all~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: rns_msgs/MapInfo~%int32 width				# Total size in pixels~%int32 height			# Total size in pixels~%float32 resolution		# Map resolution~%int32 pageSize			# Size for every page~%int32 pageDim			# Dimension for every page~%int32 numPages			# current number of allocated pages~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rns_msgs/MapPage~%int32 dim					# page dimension, power of 2~%int32 size					# page size in pixels. Likely is equal to 2^dim~%int32 x						# page X position~%int32 y						# page Y position~%rns_msgs/MapCell[] cells		# array of cells~%~%================================================================================~%MSG: rns_msgs/MapCell~%float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapContents-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapContents-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapContents-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMapContents)))
  'GetMapContents-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMapContents)))
  'GetMapContents-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapContents)))
  "Returns string type for a service object of type '<GetMapContents>"
  "rns_msgs/GetMapContents")