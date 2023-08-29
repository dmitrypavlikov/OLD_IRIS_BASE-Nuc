;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::GetTransform)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'GetTransform (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::GETTRANSFORM")
  (make-package "RNS_MSGS::GETTRANSFORM"))
(unless (find-package "RNS_MSGS::GETTRANSFORMREQUEST")
  (make-package "RNS_MSGS::GETTRANSFORMREQUEST"))
(unless (find-package "RNS_MSGS::GETTRANSFORMRESPONSE")
  (make-package "RNS_MSGS::GETTRANSFORMRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rns_msgs::GetTransformRequest
  :super ros::object
  :slots (_from _to _stamp ))

(defmethod rns_msgs::GetTransformRequest
  (:init
   (&key
    ((:from __from) "")
    ((:to __to) "")
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _from (string __from))
   (setq _to (string __to))
   (setq _stamp __stamp)
   self)
  (:from
   (&optional __from)
   (if __from (setq _from __from)) _from)
  (:to
   (&optional __to)
   (if __to (setq _to __to)) _to)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; string _from
    4 (length _from)
    ;; string _to
    4 (length _to)
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _from
       (write-long (length _from) s) (princ _from s)
     ;; string _to
       (write-long (length _to) s) (princ _to s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _from
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _from (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _to
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _to (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rns_msgs::GetTransformResponse
  :super ros::object
  :slots (_pose ))

(defmethod rns_msgs::GetTransformResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass rns_msgs::GetTransform
  :super ros::object
  :slots ())

(setf (get rns_msgs::GetTransform :md5sum-) "aad98f5c832994617c9c8eb5f246dcf1")
(setf (get rns_msgs::GetTransform :datatype-) "rns_msgs/GetTransform")
(setf (get rns_msgs::GetTransform :request) rns_msgs::GetTransformRequest)
(setf (get rns_msgs::GetTransform :response) rns_msgs::GetTransformResponse)

(defmethod rns_msgs::GetTransformRequest
  (:response () (instance rns_msgs::GetTransformResponse :init)))

(setf (get rns_msgs::GetTransformRequest :md5sum-) "aad98f5c832994617c9c8eb5f246dcf1")
(setf (get rns_msgs::GetTransformRequest :datatype-) "rns_msgs/GetTransformRequest")
(setf (get rns_msgs::GetTransformRequest :definition-)
      "string from
string to
time stamp
---
geometry_msgs/Pose pose

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

(setf (get rns_msgs::GetTransformResponse :md5sum-) "aad98f5c832994617c9c8eb5f246dcf1")
(setf (get rns_msgs::GetTransformResponse :datatype-) "rns_msgs/GetTransformResponse")
(setf (get rns_msgs::GetTransformResponse :definition-)
      "string from
string to
time stamp
---
geometry_msgs/Pose pose

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



(provide :rns_msgs/GetTransform "aad98f5c832994617c9c8eb5f246dcf1")


