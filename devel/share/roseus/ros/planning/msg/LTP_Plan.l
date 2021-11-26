;; Auto-generated. Do not edit!


(when (boundp 'planning::LTP_Plan)
  (if (not (find-package "PLANNING"))
    (make-package "PLANNING"))
  (shadow 'LTP_Plan (find-package "PLANNING")))
(unless (find-package "PLANNING::LTP_PLAN")
  (make-package "PLANNING::LTP_PLAN"))

(in-package "ROS")
;;//! \htmlinclude LTP_Plan.msg.html


(defclass planning::LTP_Plan
  :super ros::object
  :slots (_pos_x_list _pos_y_list _vel_x_list _vel_y_list ))

(defmethod planning::LTP_Plan
  (:init
   (&key
    ((:pos_x_list __pos_x_list) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pos_y_list __pos_y_list) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vel_x_list __vel_x_list) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vel_y_list __vel_y_list) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pos_x_list __pos_x_list)
   (setq _pos_y_list __pos_y_list)
   (setq _vel_x_list __vel_x_list)
   (setq _vel_y_list __vel_y_list)
   self)
  (:pos_x_list
   (&optional __pos_x_list)
   (if __pos_x_list (setq _pos_x_list __pos_x_list)) _pos_x_list)
  (:pos_y_list
   (&optional __pos_y_list)
   (if __pos_y_list (setq _pos_y_list __pos_y_list)) _pos_y_list)
  (:vel_x_list
   (&optional __vel_x_list)
   (if __vel_x_list (setq _vel_x_list __vel_x_list)) _vel_x_list)
  (:vel_y_list
   (&optional __vel_y_list)
   (if __vel_y_list (setq _vel_y_list __vel_y_list)) _vel_y_list)
  (:serialization-length
   ()
   (+
    ;; float32[] _pos_x_list
    (* 4    (length _pos_x_list)) 4
    ;; float32[] _pos_y_list
    (* 4    (length _pos_y_list)) 4
    ;; float32[] _vel_x_list
    (* 4    (length _vel_x_list)) 4
    ;; float32[] _vel_y_list
    (* 4    (length _vel_y_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pos_x_list
     (write-long (length _pos_x_list) s)
     (dotimes (i (length _pos_x_list))
       (sys::poke (elt _pos_x_list i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pos_y_list
     (write-long (length _pos_y_list) s)
     (dotimes (i (length _pos_y_list))
       (sys::poke (elt _pos_y_list i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _vel_x_list
     (write-long (length _vel_x_list) s)
     (dotimes (i (length _vel_x_list))
       (sys::poke (elt _vel_x_list i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _vel_y_list
     (write-long (length _vel_y_list) s)
     (dotimes (i (length _vel_y_list))
       (sys::poke (elt _vel_y_list i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pos_x_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_x_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos_x_list i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pos_y_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_y_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos_y_list i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _vel_x_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel_x_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vel_x_list i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _vel_y_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel_y_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vel_y_list i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get planning::LTP_Plan :md5sum-) "65ed2aaf51836053f56cfd7ad4d3b5d0")
(setf (get planning::LTP_Plan :datatype-) "planning/LTP_Plan")
(setf (get planning::LTP_Plan :definition-)
      "float32[] pos_x_list
float32[] pos_y_list
float32[] vel_x_list
float32[] vel_y_list
")



(provide :planning/LTP_Plan "65ed2aaf51836053f56cfd7ad4d3b5d0")


