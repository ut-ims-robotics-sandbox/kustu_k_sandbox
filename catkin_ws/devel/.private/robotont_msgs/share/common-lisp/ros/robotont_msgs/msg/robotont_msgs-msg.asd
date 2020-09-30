
(cl:in-package :asdf)

(defsystem "robotont_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ColorRGB" :depends-on ("_package_ColorRGB"))
    (:file "_package_ColorRGB" :depends-on ("_package"))
    (:file "LaserScanSplit" :depends-on ("_package_LaserScanSplit"))
    (:file "_package_LaserScanSplit" :depends-on ("_package"))
    (:file "LedModulePixel" :depends-on ("_package_LedModulePixel"))
    (:file "_package_LedModulePixel" :depends-on ("_package"))
    (:file "LedModuleSegment" :depends-on ("_package_LedModuleSegment"))
    (:file "_package_LedModuleSegment" :depends-on ("_package"))
    (:file "PowerSupply" :depends-on ("_package_PowerSupply"))
    (:file "_package_PowerSupply" :depends-on ("_package"))
  ))