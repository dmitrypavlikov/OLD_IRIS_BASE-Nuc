;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::MapPage)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'MapPage (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::MAPPAGE")
  (make-package "RNS_MSGS::MAPPAGE"))

(in-package "ROS")
;;//! \htmlinclude MapPage.msg.html


(defclass rns_msgs::MapPage
  :super ros::object
  :slots (_dim _size _x _y _cells ))

(defmethod rns_msgs::MapPage
  (:init
   (&key
    ((:dim __dim) 0)
    ((:size __size) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:cells __cells) (let (r) (dotimes (i 0) (push (instance rns_msgs::MapCell :init) r)) r))
    )
   (send-super :init)
   (setq _dim (round __dim))
   (setq _size (round __size))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _cells __cells)
   self)
  (:dim
   (&optional __dim)
   (if __dim (setq _dim __dim)) _dim)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:cells
   (&rest __cells)
   (if (keywordp (car __cells))
       (send* _cells __cells)
     (progn
       (if __cells (setq _cells (car __cells)))
       _cells)))
  (:serialization-length
   ()
   (+
    ;; int32 _dim
    4
    ;; int32 _size
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; rns_msgs/MapCell[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _dim
       (write-long _dim s)
     ;; int32 _size
       (write-long _size s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; rns_msgs/MapCell[] _cells
     (write-long (length _cells) s)
     (dolist (elem _cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _dim
     (setq _dim (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rns_msgs/MapCell[] _cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cells (let (r) (dotimes (i n) (push (instance rns_msgs::MapCell :init) r)) r))
     (dolist (elem- _cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rns_msgs::MapPage :md5sum-) "1508c2bfcad3c0eba674d73046ed9ca3")
(setf (get rns_msgs::MapPage :datatype-) "rns_msgs/MapPage")
(setf (get rns_msgs::MapPage :definition-)
      "int32 dim					# page dimension, power of 2
int32 size					# page size in pixels. Likely is equal to 2^dim
int32 x						# page X position
int32 y						# page Y position
rns_msgs/MapCell[] cells		# array of cells

================================================================================
MSG: rns_msgs/MapCell
float32 ax			# accumulated wall X position
float32 ay			# accumulated wall Y position
int32 n				# number of wall occurences
int32 visits		# total number of visits 
float32 distance	# array for SDF distance
float32 weight		# array for SDF weight

")



(provide :rns_msgs/MapPage "1508c2bfcad3c0eba674d73046ed9ca3")


