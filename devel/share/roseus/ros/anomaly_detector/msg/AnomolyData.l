;; Auto-generated. Do not edit!


(when (boundp 'anomaly_detector::AnomolyData)
  (if (not (find-package "ANOMALY_DETECTOR"))
    (make-package "ANOMALY_DETECTOR"))
  (shadow 'AnomolyData (find-package "ANOMALY_DETECTOR")))
(unless (find-package "ANOMALY_DETECTOR::ANOMOLYDATA")
  (make-package "ANOMALY_DETECTOR::ANOMOLYDATA"))

(in-package "ROS")
;;//! \htmlinclude AnomolyData.msg.html


(defclass anomaly_detector::AnomolyData
  :super ros::object
  :slots (_anomalyStatus _timeStamp ))

(defmethod anomaly_detector::AnomolyData
  (:init
   (&key
    ((:anomalyStatus __anomalyStatus) nil)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _anomalyStatus __anomalyStatus)
   (setq _timeStamp (round __timeStamp))
   self)
  (:anomalyStatus
   (&optional __anomalyStatus)
   (if __anomalyStatus (setq _anomalyStatus __anomalyStatus)) _anomalyStatus)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:serialization-length
   ()
   (+
    ;; bool _anomalyStatus
    1
    ;; uint64 _timeStamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _anomalyStatus
       (if _anomalyStatus (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _anomalyStatus
     (setq _anomalyStatus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(setf (get anomaly_detector::AnomolyData :md5sum-) "032f76a84fd0cd8e143318fdfb84e758")
(setf (get anomaly_detector::AnomolyData :datatype-) "anomaly_detector/AnomolyData")
(setf (get anomaly_detector::AnomolyData :definition-)
      "bool   anomalyStatus
uint64 timeStamp
")



(provide :anomaly_detector/AnomolyData "032f76a84fd0cd8e143318fdfb84e758")


