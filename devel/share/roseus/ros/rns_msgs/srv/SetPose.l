;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::SetPose)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'SetPose (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::SETPOSE")
  (make-package "RNS_MSGS::SETPOSE"))
(unless (find-package "RNS_MSGS::SETPOSEREQUEST")
  (make-package "RNS_MSGS::SETPOSEREQUEST"))
(unless (find-package "RNS_MSGS::SETPOSERESPONSE")
  (make-package "RNS_MSGS::SETPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rns_msgs::SetPoseRequest
  :super ros::object
  :slots (_header _pose _desiredState ))

(defmethod rns_msgs::SetPoseRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:desiredState __desiredState) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _desiredState (round __desiredState))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:desiredState
   (&optional __desiredState)
   (if __desiredState (setq _desiredState __desiredState)) _desiredState)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; int32 _desiredState
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; int32 _desiredState
       (write-long _desiredState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; int32 _desiredState
     (setq _desiredState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rns_msgs::SetPoseResponse
  :super ros::object
  :slots (_score _found _pose _message ))

(defmethod rns_msgs::SetPoseResponse
  (:init
   (&key
    ((:score __score) 0.0)
    ((:found __found) nil)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _score (float __score))
   (setq _found __found)
   (setq _pose __pose)
   (setq _message (string __message))
   self)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:found
   (&optional __found)
   (if __found (setq _found __found)) _found)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float32 _score
    4
    ;; bool _found
    1
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _found
       (if _found (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _found
     (setq _found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rns_msgs::SetPose
  :super ros::object
  :slots ())

(setf (get rns_msgs::SetPose :md5sum-) "64fa10ed880d9440d76d610062a82bf9")
(setf (get rns_msgs::SetPose :datatype-) "rns_msgs/SetPose")
(setf (get rns_msgs::SetPose :request) rns_msgs::SetPoseRequest)
(setf (get rns_msgs::SetPose :response) rns_msgs::SetPoseResponse)

(defmethod rns_msgs::SetPoseRequest
  (:response () (instance rns_msgs::SetPoseResponse :init)))

(setf (get rns_msgs::SetPoseRequest :md5sum-) "64fa10ed880d9440d76d610062a82bf9")
(setf (get rns_msgs::SetPoseRequest :datatype-) "rns_msgs/SetPoseRequest")
(setf (get rns_msgs::SetPoseRequest :definition-)
      "Header header

geometry_msgs/PoseWithCovariance pose


int32 desiredState

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
---

float32 score

bool found

geometry_msgs/PoseWithCovariance pose

string message

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

(setf (get rns_msgs::SetPoseResponse :md5sum-) "64fa10ed880d9440d76d610062a82bf9")
(setf (get rns_msgs::SetPoseResponse :datatype-) "rns_msgs/SetPoseResponse")
(setf (get rns_msgs::SetPoseResponse :definition-)
      "Header header

geometry_msgs/PoseWithCovariance pose


int32 desiredState

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
---

float32 score

bool found

geometry_msgs/PoseWithCovariance pose

string message

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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



(provide :rns_msgs/SetPose "64fa10ed880d9440d76d610062a82bf9")


