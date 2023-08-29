;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::Annotation)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'Annotation (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::ANNOTATION")
  (make-package "RNS_MSGS::ANNOTATION"))

(in-package "ROS")
;;//! \htmlinclude Annotation.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ANNOTATIONTYPEPOINT*" (find-package "RNS_MSGS::ANNOTATION"))
(shadow '*ANNOTATIONTYPEPOINT* (find-package "RNS_MSGS::ANNOTATION"))
(defconstant rns_msgs::Annotation::*ANNOTATIONTYPEPOINT* 1)
(intern "*ANNOTATIONTYPELINE*" (find-package "RNS_MSGS::ANNOTATION"))
(shadow '*ANNOTATIONTYPELINE* (find-package "RNS_MSGS::ANNOTATION"))
(defconstant rns_msgs::Annotation::*ANNOTATIONTYPELINE* 2)
(intern "*ANNOTATIONTYPEPOLY*" (find-package "RNS_MSGS::ANNOTATION"))
(shadow '*ANNOTATIONTYPEPOLY* (find-package "RNS_MSGS::ANNOTATION"))
(defconstant rns_msgs::Annotation::*ANNOTATIONTYPEPOLY* 3)
(defclass rns_msgs::Annotation
  :super ros::object
  :slots (_header _id _type _revision _area _pose _size _name _tags _origin _description _restricted _userdataID ))

(defmethod rns_msgs::Annotation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:type __type) 0)
    ((:revision __revision) 0)
    ((:area __area) (instance geometry_msgs::Polygon :init))
    ((:pose __pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    ((:size __size) 0.0)
    ((:name __name) "")
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:origin __origin) "")
    ((:description __description) "")
    ((:restricted __restricted) nil)
    ((:userdataID __userdataID) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _revision (round __revision))
   (setq _area __area)
   (setq _pose __pose)
   (setq _size (float __size))
   (setq _name (string __name))
   (setq _tags __tags)
   (setq _origin (string __origin))
   (setq _description (string __description))
   (setq _restricted __restricted)
   (setq _userdataID (round __userdataID))
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
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:revision
   (&optional __revision)
   (if __revision (setq _revision __revision)) _revision)
  (:area
   (&rest __area)
   (if (keywordp (car __area))
       (send* _area __area)
     (progn
       (if __area (setq _area (car __area)))
       _area)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:origin
   (&optional __origin)
   (if __origin (setq _origin __origin)) _origin)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:restricted
   (&optional __restricted)
   (if __restricted (setq _restricted __restricted)) _restricted)
  (:userdataID
   (&optional __userdataID)
   (if __userdataID (setq _userdataID __userdataID)) _userdataID)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _id
    8
    ;; int32 _type
    4
    ;; int64 _revision
    8
    ;; geometry_msgs/Polygon _area
    (send _area :serialization-length)
    ;; geometry_msgs/PoseWithCovarianceStamped _pose
    (send _pose :serialization-length)
    ;; float32 _size
    4
    ;; string _name
    4 (length _name)
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ;; string _origin
    4 (length _origin)
    ;; string _description
    4 (length _description)
    ;; bool _restricted
    1
    ;; int64 _userdataID
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; int32 _type
       (write-long _type s)
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
     ;; geometry_msgs/Polygon _area
       (send _area :serialize s)
     ;; geometry_msgs/PoseWithCovarianceStamped _pose
       (send _pose :serialize s)
     ;; float32 _size
       (sys::poke _size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _origin
       (write-long (length _origin) s) (princ _origin s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; bool _restricted
       (if _restricted (write-byte -1 s) (write-byte 0 s))
     ;; int64 _userdataID
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _userdataID (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _userdataID) (= (length (_userdataID . bv)) 2)) ;; bignum
              (write-long (ash (elt (_userdataID . bv) 0) 0) s)
              (write-long (ash (elt (_userdataID . bv) 1) -1) s))
             ((and (class _userdataID) (= (length (_userdataID . bv)) 1)) ;; big1
              (write-long (elt (_userdataID . bv) 0) s)
              (write-long (if (>= _userdataID 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _userdataID s)(write-long (if (>= _userdataID 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; geometry_msgs/Polygon _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;; geometry_msgs/PoseWithCovarianceStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _size
     (setq _size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _origin
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _origin (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _restricted
     (setq _restricted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _userdataID
#+(or :alpha :irix6 :x86_64)
      (setf _userdataID (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _userdataID (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get rns_msgs::Annotation :md5sum-) "768cdd2486d1c0fc2ffd237521ff906f")
(setf (get rns_msgs::Annotation :datatype-) "rns_msgs/Annotation")
(setf (get rns_msgs::Annotation :definition-)
      "# Standard header
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

")



(provide :rns_msgs/Annotation "768cdd2486d1c0fc2ffd237521ff906f")


