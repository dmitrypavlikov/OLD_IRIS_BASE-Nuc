; Auto-generated. Do not edit!


(cl:in-package rns_msgs-msg)


;//! \htmlinclude MapPage.msg.html

(cl:defclass <MapPage> (roslisp-msg-protocol:ros-message)
  ((dim
    :reader dim
    :initarg :dim
    :type cl:integer
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector rns_msgs-msg:MapCell)
   :initform (cl:make-array 0 :element-type 'rns_msgs-msg:MapCell :initial-element (cl:make-instance 'rns_msgs-msg:MapCell))))
)

(cl:defclass MapPage (<MapPage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapPage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapPage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-msg:<MapPage> is deprecated: use rns_msgs-msg:MapPage instead.")))

(cl:ensure-generic-function 'dim-val :lambda-list '(m))
(cl:defmethod dim-val ((m <MapPage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:dim-val is deprecated.  Use rns_msgs-msg:dim instead.")
  (dim m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <MapPage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:size-val is deprecated.  Use rns_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <MapPage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:x-val is deprecated.  Use rns_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <MapPage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:y-val is deprecated.  Use rns_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <MapPage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-msg:cells-val is deprecated.  Use rns_msgs-msg:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapPage>) ostream)
  "Serializes a message object of type '<MapPage>"
  (cl:let* ((signed (cl:slot-value msg 'dim)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapPage>) istream)
  "Deserializes a message object of type '<MapPage>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dim) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rns_msgs-msg:MapCell))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapPage>)))
  "Returns string type for a message object of type '<MapPage>"
  "rns_msgs/MapPage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapPage)))
  "Returns string type for a message object of type 'MapPage"
  "rns_msgs/MapPage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapPage>)))
  "Returns md5sum for a message object of type '<MapPage>"
  "1508c2bfcad3c0eba674d73046ed9ca3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapPage)))
  "Returns md5sum for a message object of type 'MapPage"
  "1508c2bfcad3c0eba674d73046ed9ca3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapPage>)))
  "Returns full string definition for message of type '<MapPage>"
  (cl:format cl:nil "int32 dim					# page dimension, power of 2~%int32 size					# page size in pixels. Likely is equal to 2^dim~%int32 x						# page X position~%int32 y						# page Y position~%rns_msgs/MapCell[] cells		# array of cells~%~%================================================================================~%MSG: rns_msgs/MapCell~%float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapPage)))
  "Returns full string definition for message of type 'MapPage"
  (cl:format cl:nil "int32 dim					# page dimension, power of 2~%int32 size					# page size in pixels. Likely is equal to 2^dim~%int32 x						# page X position~%int32 y						# page Y position~%rns_msgs/MapCell[] cells		# array of cells~%~%================================================================================~%MSG: rns_msgs/MapCell~%float32 ax			# accumulated wall X position~%float32 ay			# accumulated wall Y position~%int32 n				# number of wall occurences~%int32 visits		# total number of visits ~%float32 distance	# array for SDF distance~%float32 weight		# array for SDF weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapPage>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapPage>))
  "Converts a ROS message object to a list"
  (cl:list 'MapPage
    (cl:cons ':dim (dim msg))
    (cl:cons ':size (size msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':cells (cells msg))
))
