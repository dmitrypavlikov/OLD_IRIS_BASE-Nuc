; Auto-generated. Do not edit!


(cl:in-package rns_msgs-srv)


;//! \htmlinclude GetTransform-request.msg.html

(cl:defclass <GetTransform-request> (roslisp-msg-protocol:ros-message)
  ((from
    :reader from
    :initarg :from
    :type cl:string
    :initform "")
   (to
    :reader to
    :initarg :to
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass GetTransform-request (<GetTransform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<GetTransform-request> is deprecated: use rns_msgs-srv:GetTransform-request instead.")))

(cl:ensure-generic-function 'from-val :lambda-list '(m))
(cl:defmethod from-val ((m <GetTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:from-val is deprecated.  Use rns_msgs-srv:from instead.")
  (from m))

(cl:ensure-generic-function 'to-val :lambda-list '(m))
(cl:defmethod to-val ((m <GetTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:to-val is deprecated.  Use rns_msgs-srv:to instead.")
  (to m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GetTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:stamp-val is deprecated.  Use rns_msgs-srv:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransform-request>) ostream)
  "Serializes a message object of type '<GetTransform-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'from))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'from))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'to))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'to))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransform-request>) istream)
  "Deserializes a message object of type '<GetTransform-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'from) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'to) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'to) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransform-request>)))
  "Returns string type for a service object of type '<GetTransform-request>"
  "rns_msgs/GetTransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransform-request)))
  "Returns string type for a service object of type 'GetTransform-request"
  "rns_msgs/GetTransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransform-request>)))
  "Returns md5sum for a message object of type '<GetTransform-request>"
  "aad98f5c832994617c9c8eb5f246dcf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransform-request)))
  "Returns md5sum for a message object of type 'GetTransform-request"
  "aad98f5c832994617c9c8eb5f246dcf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransform-request>)))
  "Returns full string definition for message of type '<GetTransform-request>"
  (cl:format cl:nil "string from~%string to~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransform-request)))
  "Returns full string definition for message of type 'GetTransform-request"
  (cl:format cl:nil "string from~%string to~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransform-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'from))
     4 (cl:length (cl:slot-value msg 'to))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransform-request
    (cl:cons ':from (from msg))
    (cl:cons ':to (to msg))
    (cl:cons ':stamp (stamp msg))
))
;//! \htmlinclude GetTransform-response.msg.html

(cl:defclass <GetTransform-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass GetTransform-response (<GetTransform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<GetTransform-response> is deprecated: use rns_msgs-srv:GetTransform-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:pose-val is deprecated.  Use rns_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransform-response>) ostream)
  "Serializes a message object of type '<GetTransform-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransform-response>) istream)
  "Deserializes a message object of type '<GetTransform-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransform-response>)))
  "Returns string type for a service object of type '<GetTransform-response>"
  "rns_msgs/GetTransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransform-response)))
  "Returns string type for a service object of type 'GetTransform-response"
  "rns_msgs/GetTransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransform-response>)))
  "Returns md5sum for a message object of type '<GetTransform-response>"
  "aad98f5c832994617c9c8eb5f246dcf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransform-response)))
  "Returns md5sum for a message object of type 'GetTransform-response"
  "aad98f5c832994617c9c8eb5f246dcf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransform-response>)))
  "Returns full string definition for message of type '<GetTransform-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransform-response)))
  "Returns full string definition for message of type 'GetTransform-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransform-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransform-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTransform)))
  'GetTransform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTransform)))
  'GetTransform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransform)))
  "Returns string type for a service object of type '<GetTransform>"
  "rns_msgs/GetTransform")