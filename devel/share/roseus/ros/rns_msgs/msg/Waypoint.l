;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::Waypoint)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'Waypoint (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::WAYPOINT")
  (make-package "RNS_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html


(defclass rns_msgs::Waypoint
  :super ros::object
  :slots (_x _y _angle _maxVelocity _maxDeviation _useDirection _angleDeviation ))

(defmethod rns_msgs::Waypoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:angle __angle) 0.0)
    ((:maxVelocity __maxVelocity) 0.0)
    ((:maxDeviation __maxDeviation) 0.0)
    ((:useDirection __useDirection) nil)
    ((:angleDeviation __angleDeviation) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _angle (float __angle))
   (setq _maxVelocity (float __maxVelocity))
   (setq _maxDeviation (float __maxDeviation))
   (setq _useDirection __useDirection)
   (setq _angleDeviation (float __angleDeviation))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:maxVelocity
   (&optional __maxVelocity)
   (if __maxVelocity (setq _maxVelocity __maxVelocity)) _maxVelocity)
  (:maxDeviation
   (&optional __maxDeviation)
   (if __maxDeviation (setq _maxDeviation __maxDeviation)) _maxDeviation)
  (:useDirection
   (&optional __useDirection)
   (if __useDirection (setq _useDirection __useDirection)) _useDirection)
  (:angleDeviation
   (&optional __angleDeviation)
   (if __angleDeviation (setq _angleDeviation __angleDeviation)) _angleDeviation)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _angle
    4
    ;; float32 _maxVelocity
    4
    ;; float32 _maxDeviation
    4
    ;; bool _useDirection
    1
    ;; float32 _angleDeviation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxVelocity
       (sys::poke _maxVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxDeviation
       (sys::poke _maxDeviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _useDirection
       (if _useDirection (write-byte -1 s) (write-byte 0 s))
     ;; float32 _angleDeviation
       (sys::poke _angleDeviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxVelocity
     (setq _maxVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxDeviation
     (setq _maxDeviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _useDirection
     (setq _useDirection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _angleDeviation
     (setq _angleDeviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rns_msgs::Waypoint :md5sum-) "4998af0a465e0ce8aaa982a23f3dcffe")
(setf (get rns_msgs::Waypoint :datatype-) "rns_msgs/Waypoint")
(setf (get rns_msgs::Waypoint :definition-)
      "# Desired position
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



(provide :rns_msgs/Waypoint "4998af0a465e0ce8aaa982a23f3dcffe")


