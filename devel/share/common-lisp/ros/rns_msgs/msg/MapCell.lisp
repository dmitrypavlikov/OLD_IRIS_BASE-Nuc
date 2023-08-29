; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude MapCell.msg.html

(cl:defclass <MapCell> (roslisp-msg-protocol:ros-message)
  ((ax
    :reader ax
    :initarg :ax
    :type cl:float
    :initform 0.0)
   (ay
    :reader ay
    :initarg :ay
    :type cl:float
    :initform 0.0)
   (n
    :reader n
    :initarg :n
    :type cl:integer
    :initform 0)
   (visits
    :reader visits
    :initarg :visits
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0))
)

(cl:defclass MapCell (<MapCell>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapCell>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapCell)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<MapCell> is deprecated: use rns_msgs-msg:MapCell instead.")))

(cl:ensure-generic-function 'ax-val :lambda-list '(m))
(cl:defmethod ax-val ((m <MapCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:ax-val is deprecated.  Use rns_msgs-msg:ax instead.")
  (ax m))

(cl:ensure-generic-function 'ay-val :lambda-list '(m))
(cl:defmethod ay-val ((m <MapCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:ay-val is deprecated.  Use rns_msgs-msg:ay instead.")
  (ay m))

(cl:ensure-generic-function 'n-val :lambda-list '(m))
(cl:defmethod n-val ((m <MapCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:n-val is deprecated.  Use rns_msgs-msg:n instead.")
  (n m))

(cl:ensure-generic-function 'visits-val :lambda-list '(m))
(cl:defmethod visits-val ((m <MapCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:visits-val is deprecated.  Use rns_msgs-msg:visits instead.")
  (visits m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MapCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:distance-val is deprecated.  Use rns_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <MapCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:weight-val is deprecated.  Use rns_msgs-msg:weight instead.")
  (weight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapCell>) ostream)
  "Serializes a message object of type '<MapCell>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'n)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'visits)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapCell>) istream)
  "Deserializes a message object of type '<MapCell>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ay) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visits) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapCell>)))
  "Returns string type for a message object of type '<MapCell>"
  "rns_msgs/MapCell")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapCell)))
  "Returns string type for a message object of type 'MapCell"
  "rns_msgs/MapCell")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapCell>)))
  "Returns md5sum for a message object of type '<MapCell>"
  "62ee396d75bc8a98307908aecc949abe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapCell)))
  "Returns md5sum for a message object of type 'MapCell"
  "62ee396d75bc8a98307908aecc949abe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapCell>)))
  "Returns full string definition for message of type '<MapCell>"
  (cl:format cl:nil "float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapCell)))
  "Returns full string definition for message of type 'MapCell"
  (cl:format cl:nil "float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapCell>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapCell>))
  "Converts a ROS message object to a list"
  (cl:list 'MapCell
    (cl:cons ':ax (ax msg))
    (cl:cons ':ay (ay msg))
    (cl:cons ':n (n msg))
    (cl:cons ':visits (visits msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':weight (weight msg))
))
