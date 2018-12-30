
(cl:in-package :asdf)

(defsystem "anomaly_detector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AnomolyData" :depends-on ("_package_AnomolyData"))
    (:file "_package_AnomolyData" :depends-on ("_package"))
    (:file "CanMessage" :depends-on ("_package_CanMessage"))
    (:file "_package_CanMessage" :depends-on ("_package"))
  ))