;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::SetMap)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'SetMap (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::SETMAP")
  (make-package "RNS_MSGS::SETMAP"))
(unless (find-package "RNS_MSGS::SETMAPREQUEST")
  (make-package "RNS_MSGS::SETMAPREQUEST"))
(unless (find-package "RNS_MSGS::SETMAPRESPONSE")
  (make-package "RNS_MSGS::SETMAPRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass rns_msgs::SetMapRequest
  :super ros::object
  :slots (_data ))

(defmethod rns_msgs::SetMapRequest
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

(defclass rns_msgs::SetMapResponse
  :super ros::object
  :slots (_state _map ))

(defmethod rns_msgs::SetMapResponse
  (:init
   (&key
    ((:state __state) 0)
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _map __map)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass rns_msgs::SetMap
  :super ros::object
  :slots ())

(setf (get rns_msgs::SetMap :md5sum-) "a0cab6c54454c8c7895007ac34c24aff")
(setf (get rns_msgs::SetMap :datatype-) "rns_msgs/SetMap")
(setf (get rns_msgs::SetMap :request) rns_msgs::SetMapRequest)
(setf (get rns_msgs::SetMap :response) rns_msgs::SetMapResponse)

(defmethod rns_msgs::SetMapRequest
  (:response () (instance rns_msgs::SetMapResponse :init)))

(setf (get rns_msgs::SetMapRequest :md5sum-) "a0cab6c54454c8c7895007ac34c24aff")
(setf (get rns_msgs::SetMapRequest :datatype-) "rns_msgs/SetMapRequest")
(setf (get rns_msgs::SetMapRequest :definition-)
      "
rns_msgs/MapContents data

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
---

int32 state
nav_msgs/OccupancyGrid map

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
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
")

(setf (get rns_msgs::SetMapResponse :md5sum-) "a0cab6c54454c8c7895007ac34c24aff")
(setf (get rns_msgs::SetMapResponse :datatype-) "rns_msgs/SetMapResponse")
(setf (get rns_msgs::SetMapResponse :definition-)
      "
rns_msgs/MapContents data

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
---

int32 state
nav_msgs/OccupancyGrid map

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
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
")



(provide :rns_msgs/SetMap "a0cab6c54454c8c7895007ac34c24aff")


