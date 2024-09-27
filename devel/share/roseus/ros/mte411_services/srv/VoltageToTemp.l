;; Auto-generated. Do not edit!


(when (boundp 'mte411_services::VoltageToTemp)
  (if (not (find-package "MTE411_SERVICES"))
    (make-package "MTE411_SERVICES"))
  (shadow 'VoltageToTemp (find-package "MTE411_SERVICES")))
(unless (find-package "MTE411_SERVICES::VOLTAGETOTEMP")
  (make-package "MTE411_SERVICES::VOLTAGETOTEMP"))
(unless (find-package "MTE411_SERVICES::VOLTAGETOTEMPREQUEST")
  (make-package "MTE411_SERVICES::VOLTAGETOTEMPREQUEST"))
(unless (find-package "MTE411_SERVICES::VOLTAGETOTEMPRESPONSE")
  (make-package "MTE411_SERVICES::VOLTAGETOTEMPRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mte411_services::VoltageToTempRequest
  :super ros::object
  :slots (_voltage ))

(defmethod mte411_services::VoltageToTempRequest
  (:init
   (&key
    ((:voltage __voltage) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _voltage __voltage)
   self)
  (:voltage
   (&rest __voltage)
   (if (keywordp (car __voltage))
       (send* _voltage __voltage)
     (progn
       (if __voltage (setq _voltage (car __voltage)))
       _voltage)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _voltage
    (send _voltage :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _voltage
       (send _voltage :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _voltage
     (send _voltage :deserialize buf ptr-) (incf ptr- (send _voltage :serialization-length))
   ;;
   self)
  )

(defclass mte411_services::VoltageToTempResponse
  :super ros::object
  :slots (_temperature ))

(defmethod mte411_services::VoltageToTempResponse
  (:init
   (&key
    ((:temperature __temperature) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _temperature __temperature)
   self)
  (:temperature
   (&rest __temperature)
   (if (keywordp (car __temperature))
       (send* _temperature __temperature)
     (progn
       (if __temperature (setq _temperature (car __temperature)))
       _temperature)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _temperature
    (send _temperature :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _temperature
       (send _temperature :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _temperature
     (send _temperature :deserialize buf ptr-) (incf ptr- (send _temperature :serialization-length))
   ;;
   self)
  )

(defclass mte411_services::VoltageToTemp
  :super ros::object
  :slots ())

(setf (get mte411_services::VoltageToTemp :md5sum-) "c1cf9257061f040a91bd584c238b489a")
(setf (get mte411_services::VoltageToTemp :datatype-) "mte411_services/VoltageToTemp")
(setf (get mte411_services::VoltageToTemp :request) mte411_services::VoltageToTempRequest)
(setf (get mte411_services::VoltageToTemp :response) mte411_services::VoltageToTempResponse)

(defmethod mte411_services::VoltageToTempRequest
  (:response () (instance mte411_services::VoltageToTempResponse :init)))

(setf (get mte411_services::VoltageToTempRequest :md5sum-) "c1cf9257061f040a91bd584c238b489a")
(setf (get mte411_services::VoltageToTempRequest :datatype-) "mte411_services/VoltageToTempRequest")
(setf (get mte411_services::VoltageToTempRequest :definition-)
      "std_msgs/Float32 voltage 

================================================================================
MSG: std_msgs/Float32
---
std_msgs/Float32 temperature 

================================================================================
MSG: std_msgs/Float32
")

(setf (get mte411_services::VoltageToTempResponse :md5sum-) "c1cf9257061f040a91bd584c238b489a")
(setf (get mte411_services::VoltageToTempResponse :datatype-) "mte411_services/VoltageToTempResponse")
(setf (get mte411_services::VoltageToTempResponse :definition-)
      "std_msgs/Float32 voltage 

================================================================================
MSG: std_msgs/Float32
---
std_msgs/Float32 temperature 

================================================================================
MSG: std_msgs/Float32
")



(provide :mte411_services/VoltageToTemp "c1cf9257061f040a91bd584c238b489a")


