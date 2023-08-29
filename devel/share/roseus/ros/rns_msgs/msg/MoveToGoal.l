;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::MoveToGoal)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'MoveToGoal (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::MOVETOGOAL")
  (make-package "RNS_MSGS::MOVETOGOAL"))

(in-package "ROS")
;;//! \htmlinclude MoveToGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rns_msgs::MoveToGoal
  :super ros::object
  :slots (_goal _maxDistance _minDistance _oriented _canVisitUnknown _objectID ))

(defmethod rns_msgs::MoveToGoal
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    ((:maxDistance __maxDistance) 0.0)
    ((:minDistance __minDistance) 0.0)
    ((:oriented __oriented) nil)
    ((:canVisitUnknown __canVisitUnknown) nil)
    ((:objectID __objectID) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _maxDistance (float __maxDistance))
   (setq _minDistance (float __minDistance))
   (setq _oriented __oriented)
   (setq _canVisitUnknown __canVisitUnknown)
   (setq _objectID __objectID)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:maxDistance
   (&optional __maxDistance)
   (if __maxDistance (setq _maxDistance __maxDistance)) _maxDistance)
  (:minDistance
   (&optional __minDistance)
   (if __minDistance (setq _minDistance __minDistance)) _minDistance)
  (:oriented
   (&optional __oriented)
   (if __oriented (setq _oriented __oriented)) _oriented)
  (:canVisitUnknown
   (&optional __canVisitUnknown)
   (if __canVisitUnknown (setq _canVisitUnknown __canVisitUnknown)) _canVisitUnknown)
  (:objectID
   (&optional __objectID)
   (if __objectID (setq _objectID __objectID)) _objectID)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ;; float32 _maxDistance
    4
    ;; float32 _minDistance
    4
    ;; bool _oriented
    1
    ;; bool _canVisitUnknown
    1
    ;; int64[] _objectID
    (* 8    (length _objectID)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;; float32 _maxDistance
       (sys::poke _maxDistance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _minDistance
       (sys::poke _minDistance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _oriented
       (if _oriented (write-byte -1 s) (write-byte 0 s))
     ;; bool _canVisitUnknown
       (if _canVisitUnknown (write-byte -1 s) (write-byte 0 s))
     ;; int64[] _objectID
     (write-long (length _objectID) s)
     (dotimes (i (length _objectID))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _objectID i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _objectID i)) (= (length ((elt _objectID i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _objectID i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _objectID i) . bv) 1) -1) s))
             ((and (class (elt _objectID i)) (= (length ((elt _objectID i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _objectID i) . bv) 0) s)
              (write-long (if (>= (elt _objectID i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _objectID i) s)(write-long (if (>= (elt _objectID i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; float32 _maxDistance
     (setq _maxDistance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _minDistance
     (setq _minDistance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _oriented
     (setq _oriented (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _canVisitUnknown
     (setq _canVisitUnknown (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64[] _objectID
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objectID (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _objectID i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _objectID i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get rns_msgs::MoveToGoal :md5sum-) "36135debe145aaf9366fe3f5283833a7")
(setf (get rns_msgs::MoveToGoal :datatype-) "rns_msgs/MoveToGoal")
(setf (get rns_msgs::MoveToGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Goal
geometry_msgs/PoseStamped goal
# Maximum distance for path search
float32 maxDistance
# Minimal distance to be reached
float32 minDistance
# Set to true if target orientation is necessary
bool oriented
# Set to true if search can enter unknown areas
bool canVisitUnknown
# ID of object(s) to be followed
int64[] objectID

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :rns_msgs/MoveToGoal "36135debe145aaf9366fe3f5283833a7")


