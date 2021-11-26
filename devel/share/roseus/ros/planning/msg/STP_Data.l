;; Auto-generated. Do not edit!


(when (boundp 'planning::STP_Data)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'STP_Data (find-package "PLANNING")))
(unless (find-package "PLANNING::STP_DATA")
  (make-package "PLANNING::STP_DATA"))

(in-package "ROS")
;;//! \htmlinclude STP_Data.msg.html


(defclass planning::STP_Data
  :super ros::object
  :slots (_version _x ))

(defmethod planning::STP_Data
  (:init
   (&key
    ((:version __version) 0)
    ((:x __x) 0)
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _x (round __x))
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; uint16 _version
    2
    ;; uint8 _x
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _version
       (write-word _version s)
     ;; uint8 _x
       (write-byte _x s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _version
     (setq _version (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _x
     (setq _x (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get planning::STP_Data :md5sum-) "0be9624341f9042a899053589e4c16b4")
(setf (get planning::STP_Data :datatype-) "planning/STP_Data")
(setf (get planning::STP_Data :definition-)
      "uint16 version
uint8 x
")



(provide :planning/STP_Data "0be9624341f9042a899053589e4c16b4")


