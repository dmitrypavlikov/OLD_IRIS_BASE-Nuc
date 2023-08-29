;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::MapCell)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'MapCell (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::MAPCELL")
  (make-package "RNS_MSGS::MAPCELL"))

(in-package "ROS")
;;//! \htmlinclude MapCell.msg.html


(defclass rns_msgs::MapCell
  :super ros::object
  :slots (_ax _ay _n _visits _distance _weight ))

(defmethod rns_msgs::MapCell
  (:init
   (&key
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:n __n) 0)
    ((:visits __visits) 0)
    ((:distance __distance) 0.0)
    ((:weight __weight) 0.0)
    )
   (send-super :init)
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _n (round __n))
   (setq _visits (round __visits))
   (setq _distance (float __distance))
   (setq _weight (float __weight))
   self)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:visits
   (&optional __visits)
   (if __visits (setq _visits __visits)) _visits)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:serialization-length
   ()
   (+
    ;; float32 _ax
    4
    ;; float32 _ay
    4
    ;; int32 _n
    4
    ;; int32 _visits
    4
    ;; float32 _distance
    4
    ;; float32 _weight
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _n
       (write-long _n s)
     ;; int32 _visits
       (write-long _visits s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ax
     (setq _ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ay
     (setq _ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _n
     (setq _n (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _visits
     (setq _visits (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rns_msgs::MapCell :md5sum-) "62ee396d75bc8a98307908aecc949abe")
(setf (get rns_msgs::MapCell :datatype-) "rns_msgs/MapCell")
(setf (get rns_msgs::MapCell :definition-)
      "float32 ax			# accumulated wall X position
float32 ay			# accumulated wall Y position
int32 n				# number of wall occurences
int32 visits		# total number of visits 
float32 distance	# array for SDF distance
float32 weight		# array for SDF weight

")



(provide :rns_msgs/MapCell "62ee396d75bc8a98307908aecc949abe")


