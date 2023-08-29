; Auto-generated. Do not edit!


(cl:in-package rns_msgs-srv)


;//! \htmlinclude NodeControl-request.msg.html

(cl:defclass <NodeControl-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass NodeControl-request (<NodeControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<NodeControl-request> is deprecated: use rns_msgs-srv:NodeControl-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <NodeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:command-val is deprecated.  Use rns_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeControl-request>) ostream)
  "Serializes a message object of type '<NodeControl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeControl-request>) istream)
  "Deserializes a message object of type '<NodeControl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeControl-request>)))
  "Returns string type for a service object of type '<NodeControl-request>"
  "rns_msgs/NodeControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeControl-request)))
  "Returns string type for a service object of type 'NodeControl-request"
  "rns_msgs/NodeControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeControl-request>)))
  "Returns md5sum for a message object of type '<NodeControl-request>"
  "e62ac06cf7c221e8f3746d0b18c22a3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeControl-request)))
  "Returns md5sum for a message object of type 'NodeControl-request"
  "e62ac06cf7c221e8f3746d0b18c22a3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeControl-request>)))
  "Returns full string definition for message of type '<NodeControl-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeControl-request)))
  "Returns full string definition for message of type 'NodeControl-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeControl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeControl-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude NodeControl-response.msg.html

(cl:defclass <NodeControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass NodeControl-response (<NodeControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<NodeControl-response> is deprecated: use rns_msgs-srv:NodeControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <NodeControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:result-val is deprecated.  Use rns_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeControl-response>) ostream)
  "Serializes a message object of type '<NodeControl-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeControl-response>) istream)
  "Deserializes a message object of type '<NodeControl-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeControl-response>)))
  "Returns string type for a service object of type '<NodeControl-response>"
  "rns_msgs/NodeControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeControl-response)))
  "Returns string type for a service object of type 'NodeControl-response"
  "rns_msgs/NodeControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeControl-response>)))
  "Returns md5sum for a message object of type '<NodeControl-response>"
  "e62ac06cf7c221e8f3746d0b18c22a3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeControl-response)))
  "Returns md5sum for a message object of type 'NodeControl-response"
  "e62ac06cf7c221e8f3746d0b18c22a3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeControl-response>)))
  "Returns full string definition for message of type '<NodeControl-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeControl-response)))
  "Returns full string definition for message of type 'NodeControl-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeControl-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NodeControl)))
  'NodeControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NodeControl)))
  'NodeControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeControl)))
  "Returns string type for a service object of type '<NodeControl>"
  "rns_msgs/NodeControl")