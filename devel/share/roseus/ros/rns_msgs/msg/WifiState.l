;; Auto-generated. Do not edit!


(when (boundp 'rns_msgs::WifiState)
  (if (not (find-package "RNS_MSGS"))
    (make-package "RNS_MSGS"))
  (shadow 'WifiState (find-package "RNS_MSGS")))
(unless (find-package "RNS_MSGS::WIFISTATE")
  (make-package "RNS_MSGS::WIFISTATE"))

(in-package "ROS")
;;//! \htmlinclude WifiState.msg.html


(defclass rns_msgs::WifiState
  :super ros::object
  :slots (_ssid _iface _txPower _noise _quality _ping ))

(defmethod rns_msgs::WifiState
  (:init
   (&key
    ((:ssid __ssid) "")
    ((:iface __iface) "")
    ((:txPower __txPower) 0)
    ((:noise __noise) 0)
    ((:quality __quality) 0)
    ((:ping __ping) 0)
    )
   (send-super :init)
   (setq _ssid (string __ssid))
   (setq _iface (string __iface))
   (setq _txPower (round __txPower))
   (setq _noise (round __noise))
   (setq _quality (round __quality))
   (setq _ping (round __ping))
   self)
  (:ssid
   (&optional __ssid)
   (if __ssid (setq _ssid __ssid)) _ssid)
  (:iface
   (&optional __iface)
   (if __iface (setq _iface __iface)) _iface)
  (:txPower
   (&optional __txPower)
   (if __txPower (setq _txPower __txPower)) _txPower)
  (:noise
   (&optional __noise)
   (if __noise (setq _noise __noise)) _noise)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:ping
   (&optional __ping)
   (if __ping (setq _ping __ping)) _ping)
  (:serialization-length
   ()
   (+
    ;; string _ssid
    4 (length _ssid)
    ;; string _iface
    4 (length _iface)
    ;; int16 _txPower
    2
    ;; int16 _noise
    2
    ;; int16 _quality
    2
    ;; int16 _ping
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ssid
       (write-long (length _ssid) s) (princ _ssid s)
     ;; string _iface
       (write-long (length _iface) s) (princ _iface s)
     ;; int16 _txPower
       (write-word _txPower s)
     ;; int16 _noise
       (write-word _noise s)
     ;; int16 _quality
       (write-word _quality s)
     ;; int16 _ping
       (write-word _ping s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ssid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ssid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _iface
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _iface (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _txPower
     (setq _txPower (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _noise
     (setq _noise (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _quality
     (setq _quality (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ping
     (setq _ping (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rns_msgs::WifiState :md5sum-) "d14117bc77c7a4058b700a839b5275da")
(setf (get rns_msgs::WifiState :datatype-) "rns_msgs/WifiState")
(setf (get rns_msgs::WifiState :definition-)
      "string ssid
string iface
int16 txPower
int16 noise
int16 quality
int16 ping

")



(provide :rns_msgs/WifiState "d14117bc77c7a4058b700a839b5275da")


