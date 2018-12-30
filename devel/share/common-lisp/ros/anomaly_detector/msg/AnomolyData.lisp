; Auto-generated. Do not edit!


(cl:in-package anomaly_detector-msg)


;//! \htmlinclude AnomolyData.msg.html

(cl:defclass <AnomolyData> (roslisp-msg-protocol:ros-message)
  ((anomalyStatus
    :reader anomalyStatus
    :initarg :anomalyStatus
    :type cl:boolean
    :initform cl:nil)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass AnomolyData (<AnomolyData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnomolyData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnomolyData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anomaly_detector-msg:<AnomolyData> is deprecated: use anomaly_detector-msg:AnomolyData instead.")))

(cl:ensure-generic-function 'anomalyStatus-val :lambda-list '(m))
(cl:defmethod anomalyStatus-val ((m <AnomolyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:anomalyStatus-val is deprecated.  Use anomaly_detector-msg:anomalyStatus instead.")
  (anomalyStatus m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <AnomolyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anomaly_detector-msg:timeStamp-val is deprecated.  Use anomaly_detector-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnomolyData>) ostream)
  "Serializes a message object of type '<AnomolyData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'anomalyStatus) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnomolyData>) istream)
  "Deserializes a message object of type '<AnomolyData>"
    (cl:setf (cl:slot-value msg 'anomalyStatus) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnomolyData>)))
  "Returns string type for a message object of type '<AnomolyData>"
  "anomaly_detector/AnomolyData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnomolyData)))
  "Returns string type for a message object of type 'AnomolyData"
  "anomaly_detector/AnomolyData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnomolyData>)))
  "Returns md5sum for a message object of type '<AnomolyData>"
  "032f76a84fd0cd8e143318fdfb84e758")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnomolyData)))
  "Returns md5sum for a message object of type 'AnomolyData"
  "032f76a84fd0cd8e143318fdfb84e758")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnomolyData>)))
  "Returns full string definition for message of type '<AnomolyData>"
  (cl:format cl:nil "bool   anomalyStatus~%uint64 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnomolyData)))
  "Returns full string definition for message of type 'AnomolyData"
  (cl:format cl:nil "bool   anomalyStatus~%uint64 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnomolyData>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnomolyData>))
  "Converts a ROS message object to a list"
  (cl:list 'AnomolyData
    (cl:cons ':anomalyStatus (anomalyStatus msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
