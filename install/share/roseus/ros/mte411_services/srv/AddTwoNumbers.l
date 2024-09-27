;; Auto-generated. Do not edit!


(when (boundp 'mte411_services::AddTwoNumbers)
  (if (not (find-package "MTE411_SERVICES"))
    (make-package "MTE411_SERVICES"))
  (shadow 'AddTwoNumbers (find-package "MTE411_SERVICES")))
(unless (find-package "MTE411_SERVICES::ADDTWONUMBERS")
  (make-package "MTE411_SERVICES::ADDTWONUMBERS"))
(unless (find-package "MTE411_SERVICES::ADDTWONUMBERSREQUEST")
  (make-package "MTE411_SERVICES::ADDTWONUMBERSREQUEST"))
(unless (find-package "MTE411_SERVICES::ADDTWONUMBERSRESPONSE")
  (make-package "MTE411_SERVICES::ADDTWONUMBERSRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mte411_services::AddTwoNumbersRequest
  :super ros::object
  :slots (_a ))

(defmethod mte411_services::AddTwoNumbersRequest
  (:init
   (&key
    ((:a __a) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _a __a)
   self)
  (:a
   (&rest __a)
   (if (keywordp (car __a))
       (send* _a __a)
     (progn
       (if __a (setq _a (car __a)))
       _a)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _a
    (send _a :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _a
       (send _a :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;;
   self)
  )

(defclass mte411_services::AddTwoNumbersResponse
  :super ros::object
  :slots (_b ))

(defmethod mte411_services::AddTwoNumbersResponse
  (:init
   (&key
    ((:b __b) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _b __b)
   self)
  (:b
   (&rest __b)
   (if (keywordp (car __b))
       (send* _b __b)
     (progn
       (if __b (setq _b (car __b)))
       _b)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _b
    (send _b :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _b
       (send _b :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _b
     (send _b :deserialize buf ptr-) (incf ptr- (send _b :serialization-length))
   ;;
   self)
  )

(defclass mte411_services::AddTwoNumbers
  :super ros::object
  :slots ())

(setf (get mte411_services::AddTwoNumbers :md5sum-) "dbb1fdc8e4a665b7e75ed83286de19ee")
(setf (get mte411_services::AddTwoNumbers :datatype-) "mte411_services/AddTwoNumbers")
(setf (get mte411_services::AddTwoNumbers :request) mte411_services::AddTwoNumbersRequest)
(setf (get mte411_services::AddTwoNumbers :response) mte411_services::AddTwoNumbersResponse)

(defmethod mte411_services::AddTwoNumbersRequest
  (:response () (instance mte411_services::AddTwoNumbersResponse :init)))

(setf (get mte411_services::AddTwoNumbersRequest :md5sum-) "dbb1fdc8e4a665b7e75ed83286de19ee")
(setf (get mte411_services::AddTwoNumbersRequest :datatype-) "mte411_services/AddTwoNumbersRequest")
(setf (get mte411_services::AddTwoNumbersRequest :definition-)
      "std_msgs/Float32 a

================================================================================
MSG: std_msgs/Float32
---
std_msgs/Float32 b

================================================================================
MSG: std_msgs/Float32
")

(setf (get mte411_services::AddTwoNumbersResponse :md5sum-) "dbb1fdc8e4a665b7e75ed83286de19ee")
(setf (get mte411_services::AddTwoNumbersResponse :datatype-) "mte411_services/AddTwoNumbersResponse")
(setf (get mte411_services::AddTwoNumbersResponse :definition-)
      "std_msgs/Float32 a

================================================================================
MSG: std_msgs/Float32
---
std_msgs/Float32 b

================================================================================
MSG: std_msgs/Float32
")



(provide :mte411_services/AddTwoNumbers "dbb1fdc8e4a665b7e75ed83286de19ee")


