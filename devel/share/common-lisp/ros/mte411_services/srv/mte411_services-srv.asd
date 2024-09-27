
(cl:in-package :asdf)

(defsystem "mte411_services-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Encoder" :depends-on ("_package_Encoder"))
    (:file "_package_Encoder" :depends-on ("_package"))
    (:file "Random" :depends-on ("_package_Random"))
    (:file "_package_Random" :depends-on ("_package"))
    (:file "VoltageToTemp" :depends-on ("_package_VoltageToTemp"))
    (:file "_package_VoltageToTemp" :depends-on ("_package"))
  ))