
(cl:in-package :asdf)

(defsystem "rns_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :rns_msgs-msg
               :rnsmove-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AnnotationModify" :depends-on ("_package_AnnotationModify"))
    (:file "_package_AnnotationModify" :depends-on ("_package"))
    (:file "AnnotationRequest" :depends-on ("_package_AnnotationRequest"))
    (:file "_package_AnnotationRequest" :depends-on ("_package"))
    (:file "GetMapContents" :depends-on ("_package_GetMapContents"))
    (:file "_package_GetMapContents" :depends-on ("_package"))
    (:file "GetMoverState" :depends-on ("_package_GetMoverState"))
    (:file "_package_GetMoverState" :depends-on ("_package"))
    (:file "GetTransform" :depends-on ("_package_GetTransform"))
    (:file "_package_GetTransform" :depends-on ("_package"))
    (:file "NodeControl" :depends-on ("_package_NodeControl"))
    (:file "_package_NodeControl" :depends-on ("_package"))
    (:file "SetJointConfig" :depends-on ("_package_SetJointConfig"))
    (:file "_package_SetJointConfig" :depends-on ("_package"))
    (:file "SetMap" :depends-on ("_package_SetMap"))
    (:file "_package_SetMap" :depends-on ("_package"))
    (:file "SetPose" :depends-on ("_package_SetPose"))
    (:file "_package_SetPose" :depends-on ("_package"))
  ))