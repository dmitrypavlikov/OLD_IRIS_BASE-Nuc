;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::JointCmd)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'JointCmd (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::JOINTCMD")
  (make-package "RNS_MSGS::JOINTCMD"))

(in-package "ROS")
;;//! \htmlinclude JointCmd.msg.html


(defclass rns_msgs::JointCmd
  :super ros::object
  :slots (_channel _cmd ))

(defmethod rns_msgs::JointCmd
  (:init
   (&key
    ((:channel __channel) 0)
    ((:cmd __cmd) 0.0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _cmd (float __cmd))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; int32 _channel
    4
    ;; float32 _cmd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _channel
       (write-long _channel s)
     ;; float32 _cmd
       (sys::poke _cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _channel
     (setq _channel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _cmd
     (setq _cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rns_msgs::JointCmd :md5sum-) "c6c6db516e281ccd39d5b21f9184ccaf")
(setf (get rns_msgs::JointCmd :datatype-) "rns_msgs/JointCmd")
(setf (get rns_msgs::JointCmd :definition-)
      "# Joint channel ID
int32 channel

# Command for channel
float32 cmd
")



(provide :rns_msgs/JointCmd "c6c6db516e281ccd39d5b21f9184ccaf")


