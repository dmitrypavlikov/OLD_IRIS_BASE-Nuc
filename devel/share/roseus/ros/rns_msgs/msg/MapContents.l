;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::MapContents)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'MapContents (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::MAPCONTENTS")
  (make-package "RNS_MSGS::MAPCONTENTS"))

(in-package "ROS")
;;//! \htmlinclude MapContents.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rns_msgs::MapContents
  :super ros::object
  :slots (_header _info _pages ))

(defmethod rns_msgs::MapContents
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:info __info) (instance rns_msgs::MapInfo :init))
    ((:pages __pages) (let (r) (dotimes (i 0) (push (instance rns_msgs::MapPage :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _info __info)
   (setq _pages __pages)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:pages
   (&rest __pages)
   (if (keywordp (car __pages))
       (send* _pages __pages)
     (progn
       (if __pages (setq _pages (car __pages)))
       _pages)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rns_msgs/MapInfo _info
    (send _info :serialization-length)
    ;; rns_msgs/MapPage[] _pages
    (apply #'+ (send-all _pages :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rns_msgs/MapInfo _info
       (send _info :serialize s)
     ;; rns_msgs/MapPage[] _pages
     (write-long (length _pages) s)
     (dolist (elem _pages)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rns_msgs/MapInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; rns_msgs/MapPage[] _pages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pages (let (r) (dotimes (i n) (push (instance rns_msgs::MapPage :init) r)) r))
     (dolist (elem- _pages)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rns_msgs::MapContents :md5sum-) "7df6b4424f17cea740a310413f98541b")
(setf (get rns_msgs::MapContents :datatype-) "rns_msgs/MapContents")
(setf (get rns_msgs::MapContents :definition-)
      "Header header
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



(provide :rns_msgs/MapContents "7df6b4424f17cea740a310413f98541b")


