;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::SetJointConfig)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'SetJointConfig (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::SETJOINTCONFIG")
  (make-package "RNS_MSGS::SETJOINTCONFIG"))
(unless (find-package "RNS_MSGS::SETJOINTCONFIGREQUEST")
  (make-package "RNS_MSGS::SETJOINTCONFIGREQUEST"))
(unless (find-package "RNS_MSGS::SETJOINTCONFIGRESPONSE")
  (make-package "RNS_MSGS::SETJOINTCONFIGRESPONSE"))

(in-package "ROS")





(defclass rns_msgs::SetJointConfigRequest
  :super ros::object
  :slots (_config ))

(defmethod rns_msgs::SetJointConfigRequest
  (:init
   (&key
    ((:config __config) (instance rns_msgs::JointConfig :init))
    )
   (send-super :init)
   (setq _config __config)
   self)
  (:config
   (&rest __config)
   (if (keywordp (car __config))
       (send* _config __config)
     (progn
       (if __config (setq _config (car __config)))
       _config)))
  (:serialization-length
   ()
   (+
    ;; rns_msgs/JointConfig _config
    (send _config :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rns_msgs/JointConfig _config
       (send _config :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rns_msgs/JointConfig _config
     (send _config :deserialize buf ptr-) (incf ptr- (send _config :serialization-length))
   ;;
   self)
  )

(defclass rns_msgs::SetJointConfigResponse
  :super ros::object
  :slots (_result ))

(defmethod rns_msgs::SetJointConfigResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rns_msgs::SetJointConfig
  :super ros::object
  :slots ())

(setf (get rns_msgs::SetJointConfig :md5sum-) "1c6291a4c108d62355e9249140ae293c")
(setf (get rns_msgs::SetJointConfig :datatype-) "rns_msgs/SetJointConfig")
(setf (get rns_msgs::SetJointConfig :request) rns_msgs::SetJointConfigRequest)
(setf (get rns_msgs::SetJointConfig :response) rns_msgs::SetJointConfigResponse)

(defmethod rns_msgs::SetJointConfigRequest
  (:response () (instance rns_msgs::SetJointConfigResponse :init)))

(setf (get rns_msgs::SetJointConfigRequest :md5sum-) "1c6291a4c108d62355e9249140ae293c")
(setf (get rns_msgs::SetJointConfigRequest :datatype-) "rns_msgs/SetJointConfigRequest")
(setf (get rns_msgs::SetJointConfigRequest :definition-)
      "JointConfig config

================================================================================
MSG: rns_msgs/JointConfig
# Message describes joint parameterss

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
---
int32 result
")

(setf (get rns_msgs::SetJointConfigResponse :md5sum-) "1c6291a4c108d62355e9249140ae293c")
(setf (get rns_msgs::SetJointConfigResponse :datatype-) "rns_msgs/SetJointConfigResponse")
(setf (get rns_msgs::SetJointConfigResponse :definition-)
      "JointConfig config

================================================================================
MSG: rns_msgs/JointConfig
# Message describes joint parameterss

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
---
int32 result
")



(provide :rns_msgs/SetJointConfig "1c6291a4c108d62355e9249140ae293c")


