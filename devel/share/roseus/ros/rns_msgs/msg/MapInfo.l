;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::MapInfo)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'MapInfo (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::MAPINFO")
  (make-package "RNS_MSGS::MAPINFO"))

(in-package "ROS")
;;//! \htmlinclude MapInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rns_msgs::MapInfo
  :super ros::object
  :slots (_width _height _resolution _pageSize _pageDim _numPages _origin ))

(defmethod rns_msgs::MapInfo
  (:init
   (&key
    ((:width __width) 0)
    ((:height __height) 0)
    ((:resolution __resolution) 0.0)
    ((:pageSize __pageSize) 0)
    ((:pageDim __pageDim) 0)
    ((:numPages __numPages) 0)
    ((:origin __origin) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _resolution (float __resolution))
   (setq _pageSize (round __pageSize))
   (setq _pageDim (round __pageDim))
   (setq _numPages (round __numPages))
   (setq _origin __origin)
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:pageSize
   (&optional __pageSize)
   (if __pageSize (setq _pageSize __pageSize)) _pageSize)
  (:pageDim
   (&optional __pageDim)
   (if __pageDim (setq _pageDim __pageDim)) _pageDim)
  (:numPages
   (&optional __numPages)
   (if __numPages (setq _numPages __numPages)) _numPages)
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:serialization-length
   ()
   (+
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; float32 _resolution
    4
    ;; int32 _pageSize
    4
    ;; int32 _pageDim
    4
    ;; int32 _numPages
    4
    ;; geometry_msgs/Pose _origin
    (send _origin :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _pageSize
       (write-long _pageSize s)
     ;; int32 _pageDim
       (write-long _pageDim s)
     ;; int32 _numPages
       (write-long _numPages s)
     ;; geometry_msgs/Pose _origin
       (send _origin :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _pageSize
     (setq _pageSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pageDim
     (setq _pageDim (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _numPages
     (setq _numPages (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;;
   self)
  )

(setf (get rns_msgs::MapInfo :md5sum-) "6ca1e2dacff85026a9d6a7c51b48827f")
(setf (get rns_msgs::MapInfo :datatype-) "rns_msgs/MapInfo")
(setf (get rns_msgs::MapInfo :definition-)
      "int32 width				# Total size in pixels
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

")



(provide :rns_msgs/MapInfo "6ca1e2dacff85026a9d6a7c51b48827f")


