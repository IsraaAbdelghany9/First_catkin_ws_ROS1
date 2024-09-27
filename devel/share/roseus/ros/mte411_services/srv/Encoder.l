;; Auto-generated. Do not edit!


(when (boundp 'mte411_services::Encoder)
  (if (not (find-package "MTE411_SERVICES"))
    (make-package "MTE411_SERVICES"))
  (shadow 'Encoder (find-package "MTE411_SERVICES")))
(unless (find-package "MTE411_SERVICES::ENCODER")
  (make-package "MTE411_SERVICES::ENCODER"))
(unless (find-package "MTE411_SERVICES::ENCODERREQUEST")
  (make-package "MTE411_SERVICES::ENCODERREQUEST"))
(unless (find-package "MTE411_SERVICES::ENCODERRESPONSE")
  (make-package "MTE411_SERVICES::ENCODERRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mte411_services::EncoderRequest
  :super ros::object
  :slots (_pulse ))

(defmethod mte411_services::EncoderRequest
  (:init
   (&key
    ((:pulse __pulse) (instance std_msgs::Int8 :init))
    )
   (send-super :init)
   (setq _pulse __pulse)
   self)
  (:pulse
   (&rest __pulse)
   (if (keywordp (car __pulse))
       (send* _pulse __pulse)
     (progn
       (if __pulse (setq _pulse (car __pulse)))
       _pulse)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int8 _pulse
    (send _pulse :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int8 _pulse
       (send _pulse :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int8 _pulse
     (send _pulse :deserialize buf ptr-) (incf ptr- (send _pulse :serialization-length))
   ;;
   self)
  )

(defclass mte411_services::EncoderResponse
  :super ros::object
  :slots (_RPM ))

(defmethod mte411_services::EncoderResponse
  (:init
   (&key
    ((:RPM __RPM) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _RPM __RPM)
   self)
  (:RPM
   (&rest __RPM)
   (if (keywordp (car __RPM))
       (send* _RPM __RPM)
     (progn
       (if __RPM (setq _RPM (car __RPM)))
       _RPM)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _RPM
    (send _RPM :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _RPM
       (send _RPM :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _RPM
     (send _RPM :deserialize buf ptr-) (incf ptr- (send _RPM :serialization-length))
   ;;
   self)
  )

(defclass mte411_services::Encoder
  :super ros::object
  :slots ())

(setf (get mte411_services::Encoder :md5sum-) "11323230cb3de4d996e64a4ff33ac375")
(setf (get mte411_services::Encoder :datatype-) "mte411_services/Encoder")
(setf (get mte411_services::Encoder :request) mte411_services::EncoderRequest)
(setf (get mte411_services::Encoder :response) mte411_services::EncoderResponse)

(defmethod mte411_services::EncoderRequest
  (:response () (instance mte411_services::EncoderResponse :init)))

(setf (get mte411_services::EncoderRequest :md5sum-) "11323230cb3de4d996e64a4ff33ac375")
(setf (get mte411_services::EncoderRequest :datatype-) "mte411_services/EncoderRequest")
(setf (get mte411_services::EncoderRequest :definition-)
      "std_msgs/Int8 pulse

================================================================================
MSG: std_msgs/Int8
int8 data
---
std_msgs/Float32 RPM

================================================================================
MSG: std_msgs/Float32
")

(setf (get mte411_services::EncoderResponse :md5sum-) "11323230cb3de4d996e64a4ff33ac375")
(setf (get mte411_services::EncoderResponse :datatype-) "mte411_services/EncoderResponse")
(setf (get mte411_services::EncoderResponse :definition-)
      "std_msgs/Int8 pulse

================================================================================
MSG: std_msgs/Int8
int8 data
---
std_msgs/Float32 RPM

================================================================================
MSG: std_msgs/Float32
")



(provide :mte411_services/Encoder "11323230cb3de4d996e64a4ff33ac375")


