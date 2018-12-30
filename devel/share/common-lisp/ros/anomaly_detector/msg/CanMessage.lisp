; Auto-generated. Do not edit!


(cl:in-package anomaly_detector-msg)


;//! \htmlinclude CanMessage.msg.html

(cl:defclass <CanMessage> (roslisp-msg-protocol:ros-message)
  ((msgId
    :reader msgId
    :initarg :msgId
    :type cl:fixnum
    :initform 0)
   (vehicleSpeed
    :reader vehicleSpeed
    :initarg :vehicleSpeed
    :type cl:float
    :initform 0.0)
   (engineSpeed
    :reader engineSpeed
    :initarg :engineSpeed
    :type cl:float
    :initform 0.0)
   (driverDoorOpen
    :reader driverDoorOpen
    :initarg :driverDoorOpen
    :type cl:boolean
    :initform cl:nil)
   (frontPassengerDoorOpen
    :reader frontPassengerDoorOpen
    :initarg :frontPassengerDoorOpen
    :type cl:boolean
    :initform cl:nil)
   (rearLeftDoorOpen
    :reader rearLeftDoorOpen
    :initarg :rearLeftDoorOpen
    :type cl:boolean
    :initform cl:nil)
   (rearRightDoorOpen
    :reader rearRightDoorOpen
    :initarg :rearRightDoorOpen
    :type cl:boolean
    :initform cl:nil)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass CanMessage (<CanMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anomaly_detector-msg:<CanMessage> is deprecated: use anomaly_detector-msg:CanMessage instead.")))

(cl:ensure-generic-function 'msgId-val :lambda-list '(m))
(cl:defmethod msgId-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:msgId-val is deprecated.  Use anomaly_detector-msg:msgId instead.")
  (msgId m))

(cl:ensure-generic-function 'vehicleSpeed-val :lambda-list '(m))
(cl:defmethod vehicleSpeed-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:vehicleSpeed-val is deprecated.  Use anomaly_detector-msg:vehicleSpeed instead.")
  (vehicleSpeed m))

(cl:ensure-generic-function 'engineSpeed-val :lambda-list '(m))
(cl:defmethod engineSpeed-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:engineSpeed-val is deprecated.  Use anomaly_detector-msg:engineSpeed instead.")
  (engineSpeed m))

(cl:ensure-generic-function 'driverDoorOpen-val :lambda-list '(m))
(cl:defmethod driverDoorOpen-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:driverDoorOpen-val is deprecated.  Use anomaly_detector-msg:driverDoorOpen instead.")
  (driverDoorOpen m))

(cl:ensure-generic-function 'frontPassengerDoorOpen-val :lambda-list '(m))
(cl:defmethod frontPassengerDoorOpen-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:frontPassengerDoorOpen-val is deprecated.  Use anomaly_detector-msg:frontPassengerDoorOpen instead.")
  (frontPassengerDoorOpen m))

(cl:ensure-generic-function 'rearLeftDoorOpen-val :lambda-list '(m))
(cl:defmethod rearLeftDoorOpen-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:rearLeftDoorOpen-val is deprecated.  Use anomaly_detector-msg:rearLeftDoorOpen instead.")
  (rearLeftDoorOpen m))

(cl:ensure-generic-function 'rearRightDoorOpen-val :lambda-list '(m))
(cl:defmethod rearRightDoorOpen-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:rearRightDoorOpen-val is deprecated.  Use anomaly_detector-msg:rearRightDoorOpen instead.")
  (rearRightDoorOpen m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:timeStamp-val is deprecated.  Use anomaly_detector-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanMessage>) ostream)
  "Serializes a message object of type '<CanMessage>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgId)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vehicleSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'engineSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driverDoorOpen) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'frontPassengerDoorOpen) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rearLeftDoorOpen) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rearRightDoorOpen) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanMessage>) istream)
  "Deserializes a message object of type '<CanMessage>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgId)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicleSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engineSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'driverDoorOpen) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'frontPassengerDoorOpen) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rearLeftDoorOpen) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rearRightDoorOpen) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanMessage>)))
  "Returns string type for a message object of type '<CanMessage>"
  "anomaly_detector/CanMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanMessage)))
  "Returns string type for a message object of type 'CanMessage"
  "anomaly_detector/CanMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanMessage>)))
  "Returns md5sum for a message object of type '<CanMessage>"
  "0b86246e8a1593029168cc26c2e03152")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanMessage)))
  "Returns md5sum for a message object of type 'CanMessage"
  "0b86246e8a1593029168cc26c2e03152")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanMessage>)))
  "Returns full string definition for message of type '<CanMessage>"
  (cl:format cl:nil "uint8 msgId~%float64 vehicleSpeed~%float64 engineSpeed~%bool driverDoorOpen~%bool frontPassengerDoorOpen~%bool rearLeftDoorOpen~%bool rearRightDoorOpen~%uint64 timeStamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanMessage)))
  "Returns full string definition for message of type 'CanMessage"
  (cl:format cl:nil "uint8 msgId~%float64 vehicleSpeed~%float64 engineSpeed~%bool driverDoorOpen~%bool frontPassengerDoorOpen~%bool rearLeftDoorOpen~%bool rearRightDoorOpen~%uint64 timeStamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanMessage>))
  (cl:+ 0
     1
     8
     8
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'CanMessage
    (cl:cons ':msgId (msgId msg))
    (cl:cons ':vehicleSpeed (vehicleSpeed msg))
    (cl:cons ':engineSpeed (engineSpeed msg))
    (cl:cons ':driverDoorOpen (driverDoorOpen msg))
    (cl:cons ':frontPassengerDoorOpen (frontPassengerDoorOpen msg))
    (cl:cons ':rearLeftDoorOpen (rearLeftDoorOpen msg))
    (cl:cons ':rearRightDoorOpen (rearRightDoorOpen msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
