; Auto-generated. Do not edit!


(cl:in-package planning-msg)


;//! \htmlinclude STP_Data.msg.html

(cl:defclass <STP_Data> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0))
)

(cl:defclass STP_Data (<STP_Data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <STP_Data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'STP_Data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning-msg:<STP_Data> is deprecated: use planning-msg:STP_Data instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <STP_Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:version-val is deprecated.  Use planning-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <STP_Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning-msg:x-val is deprecated.  Use planning-msg:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <STP_Data>) ostream)
  "Serializes a message object of type '<STP_Data>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <STP_Data>) istream)
  "Deserializes a message object of type '<STP_Data>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<STP_Data>)))
  "Returns string type for a message object of type '<STP_Data>"
  "planning/STP_Data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'STP_Data)))
  "Returns string type for a message object of type 'STP_Data"
  "planning/STP_Data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<STP_Data>)))
  "Returns md5sum for a message object of type '<STP_Data>"
  "0be9624341f9042a899053589e4c16b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'STP_Data)))
  "Returns md5sum for a message object of type 'STP_Data"
  "0be9624341f9042a899053589e4c16b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<STP_Data>)))
  "Returns full string definition for message of type '<STP_Data>"
  (cl:format cl:nil "uint16 version~%uint8 x~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'STP_Data)))
  "Returns full string definition for message of type 'STP_Data"
  (cl:format cl:nil "uint16 version~%uint8 x~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <STP_Data>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <STP_Data>))
  "Converts a ROS message object to a list"
  (cl:list 'STP_Data
    (cl:cons ':version (version msg))
    (cl:cons ':x (x msg))
))
