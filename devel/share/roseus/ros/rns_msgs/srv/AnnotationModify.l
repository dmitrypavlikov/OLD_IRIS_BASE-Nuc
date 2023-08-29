;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::AnnotationModify)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'AnnotationModify (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::ANNOTATIONMODIFY")
  (make-package "RNS_MSGS::ANNOTATIONMODIFY"))
(unless (find-package "RNS_MSGS::ANNOTATIONMODIFYREQUEST")
  (make-package "RNS_MSGS::ANNOTATIONMODIFYREQUEST"))
(unless (find-package "RNS_MSGS::ANNOTATIONMODIFYRESPONSE")
  (make-package "RNS_MSGS::ANNOTATIONMODIFYRESPONSE"))

(in-package "ROS")





(defclass rns_msgs::AnnotationModifyRequest
  :super ros::object
  :slots (_update _updateByName ))

(defmethod rns_msgs::AnnotationModifyRequest
  (:init
   (&key
    ((:update __update) (instance rns_msgs::AnnotationUpdate :init))
    ((:updateByName __updateByName) nil)
    )
   (send-super :init)
   (setq _update __update)
   (setq _updateByName __updateByName)
   self)
  (:update
   (&rest __update)
   (if (keywordp (car __update))
       (send* _update __update)
     (progn
       (if __update (setq _update (car __update)))
       _update)))
  (:updateByName
   (&optional __updateByName)
   (if __updateByName (setq _updateByName __updateByName)) _updateByName)
  (:serialization-length
   ()
   (+
    ;; rns_msgs/AnnotationUpdate _update
    (send _update :serialization-length)
    ;; bool _updateByName
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rns_msgs/AnnotationUpdate _update
       (send _update :serialize s)
     ;; bool _updateByName
       (if _updateByName (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rns_msgs/AnnotationUpdate _update
     (send _update :deserialize buf ptr-) (incf ptr- (send _update :serialization-length))
   ;; bool _updateByName
     (setq _updateByName (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rns_msgs::AnnotationModifyResponse
  :super ros::object
  :slots (_revision _ids ))

(defmethod rns_msgs::AnnotationModifyResponse
  (:init
   (&key
    ((:revision __revision) 0)
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _revision (round __revision))
   (setq _ids __ids)
   self)
  (:revision
   (&optional __revision)
   (if __revision (setq _revision __revision)) _revision)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:serialization-length
   ()
   (+
    ;; int64 _revision
    8
    ;; int64[] _ids
    (* 8    (length _ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _revision
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _revision (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _revision) (= (length (_revision . bv)) 2)) ;; bignum
              (write-long (ash (elt (_revision . bv) 0) 0) s)
              (write-long (ash (elt (_revision . bv) 1) -1) s))
             ((and (class _revision) (= (length (_revision . bv)) 1)) ;; big1
              (write-long (elt (_revision . bv) 0) s)
              (write-long (if (>= _revision 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _revision s)(write-long (if (>= _revision 0) 0 #xffffffff) s)))
     ;; int64[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _ids i)) (= (length ((elt _ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _ids i) . bv) 1) -1) s))
             ((and (class (elt _ids i)) (= (length ((elt _ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _ids i) . bv) 0) s)
              (write-long (if (>= (elt _ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _ids i) s)(write-long (if (>= (elt _ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _revision
#+(or :alpha :irix6 :x86_64)
      (setf _revision (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _revision (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass rns_msgs::AnnotationModify
  :super ros::object
  :slots ())

(setf (get rns_msgs::AnnotationModify :md5sum-) "c1b1dd6347d93bcf8dacf5e4166ca3cc")
(setf (get rns_msgs::AnnotationModify :datatype-) "rns_msgs/AnnotationModify")
(setf (get rns_msgs::AnnotationModify :request) rns_msgs::AnnotationModifyRequest)
(setf (get rns_msgs::AnnotationModify :response) rns_msgs::AnnotationModifyResponse)

(defmethod rns_msgs::AnnotationModifyRequest
  (:response () (instance rns_msgs::AnnotationModifyResponse :init)))

(setf (get rns_msgs::AnnotationModifyRequest :md5sum-) "c1b1dd6347d93bcf8dacf5e4166ca3cc")
(setf (get rns_msgs::AnnotationModifyRequest :datatype-) "rns_msgs/AnnotationModifyRequest")
(setf (get rns_msgs::AnnotationModifyRequest :definition-)
      "
AnnotationUpdate update
bool updateByName

================================================================================
MSG: rns_msgs/AnnotationUpdate
# Message contains annotation update
rns_msgs/Annotation[] annotations

int32 ActionAdd = 1 #;    /// Add new annotations. If they are already exist - they will be modified on server
int32 ActionSet = 2 #;    /// Override whole annotation list
int32 ActionDelete = 3 #; /// Delete annotations that stored in AnnotationsUpdate.annotations array. They are found by their IDs
int32 ActionNotify = 4 #  /// Notify that there are updates for the server

# takes one of aforementioned values
int32 action
# Current server revision
int64 revision
# List of updated identifiers. Actual meaning corresponds to action type
int64[] updated
================================================================================
MSG: rns_msgs/Annotation
# Standard header
std_msgs/Header header
# Annotation ID. It should be unique
int64 id

int32 AnnotationTypePoint = 1 #;    /// Single point
int32 AnnotationTypeLine = 2 #;     /// Polyline
int32 AnnotationTypePoly = 3 #;     /// FilledPolygon

int32 type # one of types described in constants

int64 revision

geometry_msgs/Polygon area
# Central pose
geometry_msgs/PoseWithCovarianceStamped pose
# Annotation size
float32 size
# Annotation name
string name
# Attached tags
string[] tags
# Annotation origin, i.e editor name
string origin
# optional field
string description
# If this area is restricted to move in
bool restricted 
# ID for complete userdata. Can be a database index
int64 userdataID
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
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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

int64 revision


int64[] ids

")

(setf (get rns_msgs::AnnotationModifyResponse :md5sum-) "c1b1dd6347d93bcf8dacf5e4166ca3cc")
(setf (get rns_msgs::AnnotationModifyResponse :datatype-) "rns_msgs/AnnotationModifyResponse")
(setf (get rns_msgs::AnnotationModifyResponse :definition-)
      "
AnnotationUpdate update
bool updateByName

================================================================================
MSG: rns_msgs/AnnotationUpdate
# Message contains annotation update
rns_msgs/Annotation[] annotations

int32 ActionAdd = 1 #;    /// Add new annotations. If they are already exist - they will be modified on server
int32 ActionSet = 2 #;    /// Override whole annotation list
int32 ActionDelete = 3 #; /// Delete annotations that stored in AnnotationsUpdate.annotations array. They are found by their IDs
int32 ActionNotify = 4 #  /// Notify that there are updates for the server

# takes one of aforementioned values
int32 action
# Current server revision
int64 revision
# List of updated identifiers. Actual meaning corresponds to action type
int64[] updated
================================================================================
MSG: rns_msgs/Annotation
# Standard header
std_msgs/Header header
# Annotation ID. It should be unique
int64 id

int32 AnnotationTypePoint = 1 #;    /// Single point
int32 AnnotationTypeLine = 2 #;     /// Polyline
int32 AnnotationTypePoly = 3 #;     /// FilledPolygon

int32 type # one of types described in constants

int64 revision

geometry_msgs/Polygon area
# Central pose
geometry_msgs/PoseWithCovarianceStamped pose
# Annotation size
float32 size
# Annotation name
string name
# Attached tags
string[] tags
# Annotation origin, i.e editor name
string origin
# optional field
string description
# If this area is restricted to move in
bool restricted 
# ID for complete userdata. Can be a database index
int64 userdataID
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
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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

int64 revision


int64[] ids

")



(provide :rns_msgs/AnnotationModify "c1b1dd6347d93bcf8dacf5e4166ca3cc")


