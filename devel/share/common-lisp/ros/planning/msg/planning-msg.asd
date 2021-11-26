
(cl:in-package :asdf)

(defsystem "planning-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LTP_Plan" :depends-on ("_package_LTP_Plan"))
    (:file "_package_LTP_Plan" :depends-on ("_package"))
    (:file "STP_Data" :depends-on ("_package_STP_Data"))
    (:file "_package_STP_Data" :depends-on ("_package"))
  ))