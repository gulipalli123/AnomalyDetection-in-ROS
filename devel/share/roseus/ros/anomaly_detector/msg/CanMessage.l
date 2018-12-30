;; Auto-generated. Do not edit!


(when (boundp 'anomaly_detector::CanMessage)
  (if (not (find-package "ANOMALY_DETECTOR"))
    (make-package "ANOMALY_DETECTOR"))
  (shadow 'CanMessage (find-package "ANOMALY_DETECTOR")))
(unless (find-package "ANOMALY_DETECTOR::CANMESSAGE")
  (make-package "ANOMALY_DETECTOR::CANMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude CanMessage.msg.html


(defclass anomaly_detector::CanMessage
  :super ros::object
  :slots (_msgId _vehicleSpeed _engineSpeed _driverDoorOpen _frontPassengerDoorOpen _rearLeftDoorOpen _rearRightDoorOpen _timeStamp ))

(defmethod anomaly_detector::CanMessage
  (:init
   (&key
    ((:msgId __msgId) 0)
    ((:vehicleSpeed __vehicleSpeed) 0.0)
    ((:engineSpeed __engineSpeed) 0.0)
    ((:driverDoorOpen __driverDoorOpen) nil)
    ((:frontPassengerDoorOpen __frontPassengerDoorOpen) nil)
    ((:rearLeftDoorOpen __rearLeftDoorOpen) nil)
    ((:rearRightDoorOpen __rearRightDoorOpen) nil)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _msgId (round __msgId))
   (setq _vehicleSpeed (float __vehicleSpeed))
   (setq _engineSpeed (float __engineSpeed))
   (setq _driverDoorOpen __driverDoorOpen)
   (setq _frontPassengerDoorOpen __frontPassengerDoorOpen)
   (setq _rearLeftDoorOpen __rearLeftDoorOpen)
   (setq _rearRightDoorOpen __rearRightDoorOpen)
   (setq _timeStamp (round __timeStamp))
   self)
  (:msgId
   (&optional __msgId)
   (if __msgId (setq _msgId __msgId)) _msgId)
  (:vehicleSpeed
   (&optional __vehicleSpeed)
   (if __vehicleSpeed (setq _vehicleSpeed __vehicleSpeed)) _vehicleSpeed)
  (:engineSpeed
   (&optional __engineSpeed)
   (if __engineSpeed (setq _engineSpeed __engineSpeed)) _engineSpeed)
  (:driverDoorOpen
   (&optional __driverDoorOpen)
   (if __driverDoorOpen (setq _driverDoorOpen __driverDoorOpen)) _driverDoorOpen)
  (:frontPassengerDoorOpen
   (&optional __frontPassengerDoorOpen)
   (if __frontPassengerDoorOpen (setq _frontPassengerDoorOpen __frontPassengerDoorOpen)) _frontPassengerDoorOpen)
  (:rearLeftDoorOpen
   (&optional __rearLeftDoorOpen)
   (if __rearLeftDoorOpen (setq _rearLeftDoorOpen __rearLeftDoorOpen)) _rearLeftDoorOpen)
  (:rearRightDoorOpen
   (&optional __rearRightDoorOpen)
   (if __rearRightDoorOpen (setq _rearRightDoorOpen __rearRightDoorOpen)) _rearRightDoorOpen)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _msgId
    1
    ;; float64 _vehicleSpeed
    8
    ;; float64 _engineSpeed
    8
    ;; bool _driverDoorOpen
    1
    ;; bool _frontPassengerDoorOpen
    1
    ;; bool _rearLeftDoorOpen
    1
    ;; bool _rearRightDoorOpen
    1
    ;; uint64 _timeStamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _msgId
       (write-byte _msgId s)
     ;; float64 _vehicleSpeed
       (sys::poke _vehicleSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _engineSpeed
       (sys::poke _engineSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _driverDoorOpen
       (if _driverDoorOpen (write-byte -1 s) (write-byte 0 s))
     ;; bool _frontPassengerDoorOpen
       (if _frontPassengerDoorOpen (write-byte -1 s) (write-byte 0 s))
     ;; bool _rearLeftDoorOpen
       (if _rearLeftDoorOpen (write-byte -1 s) (write-byte 0 s))
     ;; bool _rearRightDoorOpen
       (if _rearRightDoorOpen (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _timeStamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timeStamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timeStamp) (= (length (_timeStamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timeStamp . bv) 0) 0) s)
              (write-long (ash (elt (_timeStamp . bv) 1) -1) s))
             ((and (class _timeStamp) (= (length (_timeStamp . bv)) 1)) ;; big1
              (write-long (elt (_timeStamp . bv) 0) s)
              (write-long (if (>= _timeStamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timeStamp s)(write-long (if (>= _timeStamp 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _msgId
     (setq _msgId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _vehicleSpeed
     (setq _vehicleSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _engineSpeed
     (setq _engineSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _driverDoorOpen
     (setq _driverDoorOpen (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _frontPassengerDoorOpen
     (setq _frontPassengerDoorOpen (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rearLeftDoorOpen
     (setq _rearLeftDoorOpen (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rearRightDoorOpen
     (setq _rearRightDoorOpen (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _timeStamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _timeStamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timeStamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get anomaly_detector::CanMessage :md5sum-) "0b86246e8a1593029168cc26c2e03152")
(setf (get anomaly_detector::CanMessage :datatype-) "anomaly_detector/CanMessage")
(setf (get anomaly_detector::CanMessage :definition-)
      "uint8 msgId
float64 vehicleSpeed
float64 engineSpeed
bool driverDoorOpen
bool frontPassengerDoorOpen
bool rearLeftDoorOpen
bool rearRightDoorOpen
uint64 timeStamp

")



(provide :anomaly_detector/CanMessage "0b86246e8a1593029168cc26c2e03152")


