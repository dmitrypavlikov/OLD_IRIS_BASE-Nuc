;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::GetMapContents)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'GetMapContents (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::GETMAPCONTENTS")
  (make-package "RNS_MSGS::GETMAPCONTENTS"))
(unless (find-package "RNS_MSGS::GETMAPCONTENTSREQUEST")
  (make-package "RNS_MSGS::GETMAPCONTENTSREQUEST"))
(unless (find-package "RNS_MSGS::GETMAPCONTENTSRESPONSE")
  (make-package "RNS_MSGS::GETMAPCONTENTSRESPONSE"))

(in-package "ROS")





(defclass rns_msgs::GetMapContentsRequest
  :super ros::object
  :slots ())

(defmethod rns_msgs::GetMapContentsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rns_msgs::GetMapContentsResponse
  :super ros::object
  :slots (_data ))

(defmethod rns_msgs::GetMapContentsResponse
  (:init
   (&key
    ((:data __data) (instance rns_msgs::MapContents :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; rns_msgs/MapContents _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rns_msgs/MapContents _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rns_msgs/MapContents _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass rns_msgs::GetMapContents
  :super ros::object
  :slots ())

(setf (get rns_msgs::GetMapContents :md5sum-) "1b81e9a6831ea1bbddfe4258c942c217")
(setf (get rns_msgs::GetMapContents :datatype-) "rns_msgs/GetMapContents")
(setf (get rns_msgs::GetMapContents :request) rns_msgs::GetMapContentsRequest)
(setf (get rns_msgs::GetMapContents :response) rns_msgs::GetMapContentsResponse)

(defmethod rns_msgs::GetMapContentsRequest
  (:response () (instance rns_msgs::GetMapContentsResponse :init)))

(setf (get rns_msgs::GetMapContentsRequest :md5sum-) "1b81e9a6831ea1bbddfe4258c942c217")
(setf (get rns_msgs::GetMapContentsRequest :datatype-) "rns_msgs/GetMapContentsRequest")
(setf (get rns_msgs::GetMapContentsRequest :definition-)
      "
---
MapContents data

================================================================================
MSG: rns_msgs/MapContents
Header header
rns_msgs/MapInfo info
rns_msgs/MapPage[] pages	# Array of pages, not sorted at all

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: rns_msgs/MapInfo
int32 width				# Total size in pixels
int32 height			# Total size in pixels
float32 resolution		# Map resolution
int32 pageSize			# Size for every page
int32 pageDim			# Dimension for every page
int32 numPages			# current number of allocated pages
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: rns_msgs/MapPage
int32 dim					# page dimension, power of 2
int32 size					# page size in pixels. Likely is equal to 2^dim
int32 x						# page X position
int32 y						# page Y position
rns_msgs/MapCell[] cells		# array of cells

================================================================================
MSG: rns_msgs/MapCell
float32 ax			# accumulated wall X position
float32 ay			# accumulated wall Y position
int32 n				# number of wall occurences
int32 visits		# total number of visits 
float32 distance	# array for SDF distance
float32 weight		# array for SDF weight
")

(setf (get rns_msgs::GetMapContentsResponse :md5sum-) "1b81e9a6831ea1bbddfe4258c942c217")
(setf (get rns_msgs::GetMapContentsResponse :datatype-) "rns_msgs/GetMapContentsResponse")
(setf (get rns_msgs::GetMapContentsResponse :definition-)
      "
---
MapContents data

================================================================================
MSG: rns_msgs/MapContents
Header header
rns_msgs/MapInfo info
rns_msgs/MapPage[] pages	# Array of pages, not sorted at all

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: rns_msgs/MapInfo
int32 width				# Total size in pixels
int32 height			# Total size in pixels
float32 resolution		# Map resolution
int32 pageSize			# Size for every page
int32 pageDim			# Dimension for every page
int32 numPages			# current number of allocated pages
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: rns_msgs/MapPage
int32 dim					# page dimension, power of 2
int32 size					# page size in pixels. Likely is equal to 2^dim
int32 x						# page X position
int32 y						# page Y position
rns_msgs/MapCell[] cells		# array of cells

================================================================================
MSG: rns_msgs/MapCell
float32 ax			# accumulated wall X position
float32 ay			# accumulated wall Y position
int32 n				# number of wall occurences
int32 visits		# total number of visits 
float32 distance	# array for SDF distance
float32 weight		# array for SDF weight
")



(provide :rns_msgs/GetMapContents "1b81e9a6831ea1bbddfe4258c942c217")


