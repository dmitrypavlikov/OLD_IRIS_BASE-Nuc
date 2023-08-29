;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::RawIMU)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'RawIMU (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::RAWIMU")
  (make-package "RNS_MSGS::RAWIMU"))

(in-package "ROS")
;;//! \htmlinclude RawIMU.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rns_msgs::RawIMU
  :super ros::object
  :slots (_header _acc _gyro _mag _acc_max _gyro_max _mag_max _temperature ))

(defmethod rns_msgs::RawIMU
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:acc __acc) (instance geometry_msgs::Vector3 :init))
    ((:gyro __gyro) (instance geometry_msgs::Vector3 :init))
    ((:mag __mag) (instance geometry_msgs::Vector3 :init))
    ((:acc_max __acc_max) 0.0)
    ((:gyro_max __gyro_max) 0.0)
    ((:mag_max __mag_max) 0.0)
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _acc __acc)
   (setq _gyro __gyro)
   (setq _mag __mag)
   (setq _acc_max (float __acc_max))
   (setq _gyro_max (float __gyro_max))
   (setq _mag_max (float __mag_max))
   (setq _temperature (float __temperature))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:acc
   (&rest __acc)
   (if (keywordp (car __acc))
       (send* _acc __acc)
     (progn
       (if __acc (setq _acc (car __acc)))
       _acc)))
  (:gyro
   (&rest __gyro)
   (if (keywordp (car __gyro))
       (send* _gyro __gyro)
     (progn
       (if __gyro (setq _gyro (car __gyro)))
       _gyro)))
  (:mag
   (&rest __mag)
   (if (keywordp (car __mag))
       (send* _mag __mag)
     (progn
       (if __mag (setq _mag (car __mag)))
       _mag)))
  (:acc_max
   (&optional __acc_max)
   (if __acc_max (setq _acc_max __acc_max)) _acc_max)
  (:gyro_max
   (&optional __gyro_max)
   (if __gyro_max (setq _gyro_max __gyro_max)) _gyro_max)
  (:mag_max
   (&optional __mag_max)
   (if __mag_max (setq _mag_max __mag_max)) _mag_max)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _acc
    (send _acc :serialization-length)
    ;; geometry_msgs/Vector3 _gyro
    (send _gyro :serialization-length)
    ;; geometry_msgs/Vector3 _mag
    (send _mag :serialization-length)
    ;; float64 _acc_max
    8
    ;; float64 _gyro_max
    8
    ;; float64 _mag_max
    8
    ;; float64 _temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _acc
       (send _acc :serialize s)
     ;; geometry_msgs/Vector3 _gyro
       (send _gyro :serialize s)
     ;; geometry_msgs/Vector3 _mag
       (send _mag :serialize s)
     ;; float64 _acc_max
       (sys::poke _acc_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyro_max
       (sys::poke _gyro_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mag_max
       (sys::poke _mag_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _acc
     (send _acc :deserialize buf ptr-) (incf ptr- (send _acc :serialization-length))
   ;; geometry_msgs/Vector3 _gyro
     (send _gyro :deserialize buf ptr-) (incf ptr- (send _gyro :serialization-length))
   ;; geometry_msgs/Vector3 _mag
     (send _mag :deserialize buf ptr-) (incf ptr- (send _mag :serialization-length))
   ;; float64 _acc_max
     (setq _acc_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyro_max
     (setq _gyro_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mag_max
     (setq _mag_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rns_msgs::RawIMU :md5sum-) "c87fe4b60e5265c9c047d884383a8459")
(setf (get rns_msgs::RawIMU :datatype-) "rns_msgs/RawIMU")
(setf (get rns_msgs::RawIMU :definition-)
      "Header header

geometry_msgs/Vector3 acc
geometry_msgs/Vector3 gyro
geometry_msgs/Vector3 mag

# Max values for acc/gyro/mag
float64 acc_max
float64 gyro_max
float64 mag_max

# Temperature
float64 temperature
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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rns_msgs/RawIMU "c87fe4b60e5265c9c047d884383a8459")


