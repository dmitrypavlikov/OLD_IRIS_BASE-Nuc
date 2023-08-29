;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::NodeControl)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'NodeControl (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::NODECONTROL")
  (make-package "RNS_MSGS::NODECONTROL"))
(unless (find-package "RNS_MSGS::NODECONTROLREQUEST")
  (make-package "RNS_MSGS::NODECONTROLREQUEST"))
(unless (find-package "RNS_MSGS::NODECONTROLRESPONSE")
  (make-package "RNS_MSGS::NODECONTROLRESPONSE"))

(in-package "ROS")





(defclass rns_msgs::NodeControlRequest
  :super ros::object
  :slots (_command ))

(defmethod rns_msgs::NodeControlRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rns_msgs::NodeControlResponse
  :super ros::object
  :slots (_result ))

(defmethod rns_msgs::NodeControlResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rns_msgs::NodeControl
  :super ros::object
  :slots ())

(setf (get rns_msgs::NodeControl :md5sum-) "e62ac06cf7c221e8f3746d0b18c22a3b")
(setf (get rns_msgs::NodeControl :datatype-) "rns_msgs/NodeControl")
(setf (get rns_msgs::NodeControl :request) rns_msgs::NodeControlRequest)
(setf (get rns_msgs::NodeControl :response) rns_msgs::NodeControlResponse)

(defmethod rns_msgs::NodeControlRequest
  (:response () (instance rns_msgs::NodeControlResponse :init)))

(setf (get rns_msgs::NodeControlRequest :md5sum-) "e62ac06cf7c221e8f3746d0b18c22a3b")
(setf (get rns_msgs::NodeControlRequest :datatype-) "rns_msgs/NodeControlRequest")
(setf (get rns_msgs::NodeControlRequest :definition-)
      "string command
---
string result
")

(setf (get rns_msgs::NodeControlResponse :md5sum-) "e62ac06cf7c221e8f3746d0b18c22a3b")
(setf (get rns_msgs::NodeControlResponse :datatype-) "rns_msgs/NodeControlResponse")
(setf (get rns_msgs::NodeControlResponse :definition-)
      "string command
---
string result
")



(provide :rns_msgs/NodeControl "e62ac06cf7c221e8f3746d0b18c22a3b")


