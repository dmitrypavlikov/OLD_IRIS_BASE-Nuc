;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::AnnotatedPath)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'AnnotatedPath (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::ANNOTATEDPATH")
  (make-package "RNS_MSGS::ANNOTATEDPATH"))

(in-package "ROS")
;;//! \htmlinclude AnnotatedPath.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rns_msgs::AnnotatedPath
  :super ros::object
  :slots (_header _id _waypoints _useDirections _reversed ))

(defmethod rns_msgs::AnnotatedPath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance rns_msgs::Waypoint :init) r)) r))
    ((:useDirections __useDirections) nil)
    ((:reversed __reversed) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _waypoints __waypoints)
   (setq _useDirections __useDirections)
   (setq _reversed __reversed)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:useDirections
   (&optional __useDirections)
   (if __useDirections (setq _useDirections __useDirections)) _useDirections)
  (:reversed
   (&optional __reversed)
   (if __reversed (setq _reversed __reversed)) _reversed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; rns_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; bool _useDirections
    1
    ;; bool _reversed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; rns_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; bool _useDirections
       (if _useDirections (write-byte -1 s) (write-byte 0 s))
     ;; bool _reversed
       (if _reversed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rns_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance rns_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _useDirections
     (setq _useDirections (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reversed
     (setq _reversed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rns_msgs::AnnotatedPath :md5sum-) "0b1eef100fbebb30331ce40cce8f2f13")
(setf (get rns_msgs::AnnotatedPath :datatype-) "rns_msgs/AnnotatedPath")
(setf (get rns_msgs::AnnotatedPath :definition-)
      "std_msgs/Header header

# Path request id. 
int32 id
# Actual path
rns_msgs/Waypoint[] waypoints
# Should mover take care of waypoint directions
bool useDirections
# If path is reversed
bool reversed
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
MSG: rns_msgs/Waypoint
# Desired position
float32 x
float32 y
# desired direction, in radians
float32 angle
# Max velocity for this waypoint, -1 if no limits
float32 maxVelocity
# Max deviation from this waypoint
float32 maxDeviation
# If target position is relevant
bool useDirection
# Max angle deviation
float32 angleDeviation
")



(provide :rns_msgs/AnnotatedPath "0b1eef100fbebb30331ce40cce8f2f13")


