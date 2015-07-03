
(cl:in-package :asdf)

(defsystem "my_kinnect-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SkeletonCoords" :depends-on ("_package_SkeletonCoords"))
    (:file "_package_SkeletonCoords" :depends-on ("_package"))
    (:file "NaoCoords" :depends-on ("_package_NaoCoords"))
    (:file "_package_NaoCoords" :depends-on ("_package"))
  ))