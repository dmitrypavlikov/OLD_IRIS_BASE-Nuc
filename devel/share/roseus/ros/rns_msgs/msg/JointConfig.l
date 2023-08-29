;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::JointConfig)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'JointConfig (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::JOINTCONFIG")
  (make-package "RNS_MSGS::JOINTCONFIG"))

(in-package "ROS")
;;//! \htmlinclude JointConfig.msg.html


(defclass rns_msgs::JointConfig
  :super ros::object
  :slots (_channel _P _I _D _rate _max_velocity _lower_bound _upper_bound _limit_position ))

(defmethod rns_msgs::JointConfig
  (:init
   (&key
    ((:channel __channel) 0)
    ((:P __P) 0.0)
    ((:I __I) 0.0)
    ((:D __D) 0.0)
    ((:rate __rate) 0.0)
    ((:max_velocity __max_velocity) 0.0)
    ((:lower_bound __lower_bound) 0.0)
    ((:upper_bound __upper_bound) 0.0)
    ((:limit_position __limit_position) nil)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _P (float __P))
   (setq _I (float __I))
   (setq _D (float __D))
   (setq _rate (float __rate))
   (setq _max_velocity (float __max_velocity))
   (setq _lower_bound (float __lower_bound))
   (setq _upper_bound (float __upper_bound))
   (setq _limit_position __limit_position)
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:P
   (&optional __P)
   (if __P (setq _P __P)) _P)
  (:I
   (&optional __I)
   (if __I (setq _I __I)) _I)
  (:D
   (&optional __D)
   (if __D (setq _D __D)) _D)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:max_velocity
   (&optional __max_velocity)
   (if __max_velocity (setq _max_velocity __max_velocity)) _max_velocity)
  (:lower_bound
   (&optional __lower_bound)
   (if __lower_bound (setq _lower_bound __lower_bound)) _lower_bound)
  (:upper_bound
   (&optional __upper_bound)
   (if __upper_bound (setq _upper_bound __upper_bound)) _upper_bound)
  (:limit_position
   (&optional __limit_position)
   (if __limit_position (setq _limit_position __limit_position)) _limit_position)
  (:serialization-length
   ()
   (+
    ;; int32 _channel
    4
    ;; float32 _P
    4
    ;; float32 _I
    4
    ;; float32 _D
    4
    ;; float32 _rate
    4
    ;; float32 _max_velocity
    4
    ;; float32 _lower_bound
    4
    ;; float32 _upper_bound
    4
    ;; bool _limit_position
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _channel
       (write-long _channel s)
     ;; float32 _P
       (sys::poke _P (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _I
       (sys::poke _I (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _D
       (sys::poke _D (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rate
       (sys::poke _rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_velocity
       (sys::poke _max_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lower_bound
       (sys::poke _lower_bound (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _upper_bound
       (sys::poke _upper_bound (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _limit_position
       (if _limit_position (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _channel
     (setq _channel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _P
     (setq _P (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _I
     (setq _I (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _D
     (setq _D (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rate
     (setq _rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_velocity
     (setq _max_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lower_bound
     (setq _lower_bound (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _upper_bound
     (setq _upper_bound (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _limit_position
     (setq _limit_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rns_msgs::JointConfig :md5sum-) "cf64d7b2610d4202b59257f17a594cb0")
(setf (get rns_msgs::JointConfig :datatype-) "rns_msgs/JointConfig")
(setf (get rns_msgs::JointConfig :definition-)
      "# Message describes joint parameterss

# Joint channel ID
int32 channel
# Regulator parameters
float32 P
float32 I
float32 D
float32 rate

# Joint limits
float32 max_velocity
float32 lower_bound
float32 upper_bound
bool limit_position

")



(provide :rns_msgs/JointConfig "cf64d7b2610d4202b59257f17a594cb0")


