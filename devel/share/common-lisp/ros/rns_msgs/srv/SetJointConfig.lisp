; Auto-generated. Do not edit!


(cl:in-package rns_msgs-srv)


;//! \htmlinclude SetJointConfig-request.msg.html

(cl:defclass <SetJointConfig-request> (roslisp-msg-protocol:ros-message)
  ((config
    :reader config
    :initarg :config
    :type rns_msgs-msg:JointConfig
    :initform (cl:make-instance 'rns_msgs-msg:JointConfig)))
)

(cl:defclass SetJointConfig-request (<SetJointConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<SetJointConfig-request> is deprecated: use rns_msgs-srv:SetJointConfig-request instead.")))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <SetJointConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:config-val is deprecated.  Use rns_msgs-srv:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointConfig-request>) ostream)
  "Serializes a message object of type '<SetJointConfig-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'config) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointConfig-request>) istream)
  "Deserializes a message object of type '<SetJointConfig-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'config) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointConfig-request>)))
  "Returns string type for a service object of type '<SetJointConfig-request>"
  "rns_msgs/SetJointConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointConfig-request)))
  "Returns string type for a service object of type 'SetJointConfig-request"
  "rns_msgs/SetJointConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointConfig-request>)))
  "Returns md5sum for a message object of type '<SetJointConfig-request>"
  "1c6291a4c108d62355e9249140ae293c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointConfig-request)))
  "Returns md5sum for a message object of type 'SetJointConfig-request"
  "1c6291a4c108d62355e9249140ae293c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointConfig-request>)))
  "Returns full string definition for message of type '<SetJointConfig-request>"
  (cl:format cl:nil "JointConfig config~%~%================================================================================~%MSG: rns_msgs/JointConfig~%# Message describes joint parameterss~%~%# Joint channel ID~%int32 channel~%# Regulator parameters~%float32 P~%float32 I~%float32 D~%float32 rate~%~%# Joint limits~%float32 max_velocity~%float32 lower_bound~%float32 upper_bound~%bool limit_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointConfig-request)))
  "Returns full string definition for message of type 'SetJointConfig-request"
  (cl:format cl:nil "JointConfig config~%~%================================================================================~%MSG: rns_msgs/JointConfig~%# Message describes joint parameterss~%~%# Joint channel ID~%int32 channel~%# Regulator parameters~%float32 P~%float32 I~%float32 D~%float32 rate~%~%# Joint limits~%float32 max_velocity~%float32 lower_bound~%float32 upper_bound~%bool limit_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointConfig-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'config))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointConfig-request
    (cl:cons ':config (config msg))
))
;//! \htmlinclude SetJointConfig-response.msg.html

(cl:defclass <SetJointConfig-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetJointConfig-response (<SetJointConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rns_msgs-srv:<SetJointConfig-response> is deprecated: use rns_msgs-srv:SetJointConfig-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetJointConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rns_msgs-srv:result-val is deprecated.  Use rns_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointConfig-response>) ostream)
  "Serializes a message object of type '<SetJointConfig-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointConfig-response>) istream)
  "Deserializes a message object of type '<SetJointConfig-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointConfig-response>)))
  "Returns string type for a service object of type '<SetJointConfig-response>"
  "rns_msgs/SetJointConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointConfig-response)))
  "Returns string type for a service object of type 'SetJointConfig-response"
  "rns_msgs/SetJointConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointConfig-response>)))
  "Returns md5sum for a message object of type '<SetJointConfig-response>"
  "1c6291a4c108d62355e9249140ae293c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointConfig-response)))
  "Returns md5sum for a message object of type 'SetJointConfig-response"
  "1c6291a4c108d62355e9249140ae293c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointConfig-response>)))
  "Returns full string definition for message of type '<SetJointConfig-response>"
  (cl:format cl:nil "int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointConfig-response)))
  "Returns full string definition for message of type 'SetJointConfig-response"
  (cl:format cl:nil "int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointConfig-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointConfig-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointConfig)))
  'SetJointConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointConfig)))
  'SetJointConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointConfig)))
  "Returns string type for a service object of type '<SetJointConfig>"
  "rns_msgs/SetJointConfig")