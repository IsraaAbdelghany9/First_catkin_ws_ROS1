;; Auto-generated. Do not edit!


(when (boundp 'mte411_services::Random)
  (if (not (find-package "MTE411_SERVICES"))
    (make-package "MTE411_SERVICES"))
  (shadow 'Random (find-package "MTE411_SERVICES")))
(unless (find-package "MTE411_SERVICES::RANDOM")
  (make-package "MTE411_SERVICES::RANDOM"))
(unless (find-package "MTE411_SERVICES::RANDOMREQUEST")
  (make-package "MTE411_SERVICES::RANDOMREQUEST"))
(unless (find-package "MTE411_SERVICES::RANDOMRESPONSE")
  (make-package "MTE411_SERVICES::RANDOMRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mte411_services::RandomRequest
  :super ros::object
  :slots (_Entery ))

(defmethod mte411_services::RandomRequest
  (:init
   (&key
    ((:Entery __Entery) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _Entery __Entery)
   self)
  (:Entery
   (&rest __Entery)
   (if (keywordp (car __Entery))
       (send* _Entery __Entery)
     (progn
       (if __Entery (setq _Entery (car __Entery)))
       _Entery)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _Entery
    (send _Entery :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _Entery
       (send _Entery :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _Entery
     (send _Entery :deserialize buf ptr-) (incf ptr- (send _Entery :serialization-length))
   ;;
   self)
  )

(defclass mte411_services::RandomResponse
  :super ros::object
  :slots (_numder ))

(defmethod mte411_services::RandomResponse
  (:init
   (&key
    ((:numder __numder) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _numder __numder)
   self)
  (:numder
   (&rest __numder)
   (if (keywordp (car __numder))
       (send* _numder __numder)
     (progn
       (if __numder (setq _numder (car __numder)))
       _numder)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _numder
    (send _numder :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _numder
       (send _numder :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _numder
     (send _numder :deserialize buf ptr-) (incf ptr- (send _numder :serialization-length))
   ;;
   self)
  )

(defclass mte411_services::Random
  :super ros::object
  :slots ())

(setf (get mte411_services::Random :md5sum-) "2880ddbf81389eed9201b6ff083b33fa")
(setf (get mte411_services::Random :datatype-) "mte411_services/Random")
(setf (get mte411_services::Random :request) mte411_services::RandomRequest)
(setf (get mte411_services::Random :response) mte411_services::RandomResponse)

(defmethod mte411_services::RandomRequest
  (:response () (instance mte411_services::RandomResponse :init)))

(setf (get mte411_services::RandomRequest :md5sum-) "2880ddbf81389eed9201b6ff083b33fa")
(setf (get mte411_services::RandomRequest :datatype-) "mte411_services/RandomRequest")
(setf (get mte411_services::RandomRequest :definition-)
      "std_msgs/Bool Entery

================================================================================
MSG: std_msgs/Bool
---
std_msgs/Float32 numder

================================================================================
MSG: std_msgs/Float32
")

(setf (get mte411_services::RandomResponse :md5sum-) "2880ddbf81389eed9201b6ff083b33fa")
(setf (get mte411_services::RandomResponse :datatype-) "mte411_services/RandomResponse")
(setf (get mte411_services::RandomResponse :definition-)
      "std_msgs/Bool Entery

================================================================================
MSG: std_msgs/Bool
---
std_msgs/Float32 numder

================================================================================
MSG: std_msgs/Float32
")



(provide :mte411_services/Random "2880ddbf81389eed9201b6ff083b33fa")


