; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude WifiState.msg.html

(cl:defclass <WifiState> (roslisp-msg-protocol:ros-message)
  ((ssid
    :reader ssid
    :initarg :ssid
    :type cl:string
    :initform "")
   (iface
    :reader iface
    :initarg :iface
    :type cl:string
    :initform "")
   (txPower
    :reader txPower
    :initarg :txPower
    :type cl:fixnum
    :initform 0)
   (noise
    :reader noise
    :initarg :noise
    :type cl:fixnum
    :initform 0)
   (quality
    :reader quality
    :initarg :quality
    :type cl:fixnum
    :initform 0)
   (ping
    :reader ping
    :initarg :ping
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WifiState (<WifiState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WifiState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WifiState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<WifiState> is deprecated: use rns_msgs-msg:WifiState instead.")))

(cl:ensure-generic-function 'ssid-val :lambda-list '(m))
(cl:defmethod ssid-val ((m <WifiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:ssid-val is deprecated.  Use rns_msgs-msg:ssid instead.")
  (ssid m))

(cl:ensure-generic-function 'iface-val :lambda-list '(m))
(cl:defmethod iface-val ((m <WifiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:iface-val is deprecated.  Use rns_msgs-msg:iface instead.")
  (iface m))

(cl:ensure-generic-function 'txPower-val :lambda-list '(m))
(cl:defmethod txPower-val ((m <WifiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:txPower-val is deprecated.  Use rns_msgs-msg:txPower instead.")
  (txPower m))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <WifiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:noise-val is deprecated.  Use rns_msgs-msg:noise instead.")
  (noise m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <WifiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:quality-val is deprecated.  Use rns_msgs-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'ping-val :lambda-list '(m))
(cl:defmethod ping-val ((m <WifiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:ping-val is deprecated.  Use rns_msgs-msg:ping instead.")
  (ping m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WifiState>) ostream)
  "Serializes a message object of type '<WifiState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ssid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ssid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'iface))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'iface))
  (cl:let* ((signed (cl:slot-value msg 'txPower)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'noise)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ping)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WifiState>) istream)
  "Deserializes a message object of type '<WifiState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ssid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ssid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iface) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'iface) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txPower) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noise) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quality) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ping) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WifiState>)))
  "Returns string type for a message object of type '<WifiState>"
  "rns_msgs/WifiState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WifiState)))
  "Returns string type for a message object of type 'WifiState"
  "rns_msgs/WifiState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WifiState>)))
  "Returns md5sum for a message object of type '<WifiState>"
  "d14117bc77c7a4058b700a839b5275da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WifiState)))
  "Returns md5sum for a message object of type 'WifiState"
  "d14117bc77c7a4058b700a839b5275da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WifiState>)))
  "Returns full string definition for message of type '<WifiState>"
  (cl:format cl:nil "string ssid~%string iface~%int16 txPower~%int16 noise~%int16 quality~%int16 ping~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WifiState)))
  "Returns full string definition for message of type 'WifiState"
  (cl:format cl:nil "string ssid~%string iface~%int16 txPower~%int16 noise~%int16 quality~%int16 ping~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WifiState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ssid))
     4 (cl:length (cl:slot-value msg 'iface))
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WifiState>))
  "Converts a ROS message object to a list"
  (cl:list 'WifiState
    (cl:cons ':ssid (ssid msg))
    (cl:cons ':iface (iface msg))
    (cl:cons ':txPower (txPower msg))
    (cl:cons ':noise (noise msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':ping (ping msg))
))
