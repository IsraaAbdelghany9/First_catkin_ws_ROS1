; Auto-generated. Do not edit!


(cl:in-package mte411_services-srv)


;//! \htmlinclude VoltageToTemp-request.msg.html

(cl:defclass <VoltageToTemp-request> (roslisp-msg-protocol:ros-message)
  ((voltage
    :reader voltage
    :initarg :voltage
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass VoltageToTemp-request (<VoltageToTemp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VoltageToTemp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VoltageToTemp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mte411_services-srv:<VoltageToTemp-request> is deprecated: use mte411_services-srv:VoltageToTemp-request instead.")))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <VoltageToTemp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mte411_services-srv:voltage-val is deprecated.  Use mte411_services-srv:voltage instead.")
  (voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VoltageToTemp-request>) ostream)
  "Serializes a message object of type '<VoltageToTemp-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'voltage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VoltageToTemp-request>) istream)
  "Deserializes a message object of type '<VoltageToTemp-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'voltage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VoltageToTemp-request>)))
  "Returns string type for a service object of type '<VoltageToTemp-request>"
  "mte411_services/VoltageToTempRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoltageToTemp-request)))
  "Returns string type for a service object of type 'VoltageToTemp-request"
  "mte411_services/VoltageToTempRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VoltageToTemp-request>)))
  "Returns md5sum for a message object of type '<VoltageToTemp-request>"
  "c1cf9257061f040a91bd584c238b489a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VoltageToTemp-request)))
  "Returns md5sum for a message object of type 'VoltageToTemp-request"
  "c1cf9257061f040a91bd584c238b489a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VoltageToTemp-request>)))
  "Returns full string definition for message of type '<VoltageToTemp-request>"
  (cl:format cl:nil "std_msgs/Float32 voltage ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VoltageToTemp-request)))
  "Returns full string definition for message of type 'VoltageToTemp-request"
  (cl:format cl:nil "std_msgs/Float32 voltage ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VoltageToTemp-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'voltage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VoltageToTemp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VoltageToTemp-request
    (cl:cons ':voltage (voltage msg))
))
;//! \htmlinclude VoltageToTemp-response.msg.html

(cl:defclass <VoltageToTemp-response> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass VoltageToTemp-response (<VoltageToTemp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VoltageToTemp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VoltageToTemp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mte411_services-srv:<VoltageToTemp-response> is deprecated: use mte411_services-srv:VoltageToTemp-response instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <VoltageToTemp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mte411_services-srv:temperature-val is deprecated.  Use mte411_services-srv:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VoltageToTemp-response>) ostream)
  "Serializes a message object of type '<VoltageToTemp-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'temperature) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VoltageToTemp-response>) istream)
  "Deserializes a message object of type '<VoltageToTemp-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'temperature) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VoltageToTemp-response>)))
  "Returns string type for a service object of type '<VoltageToTemp-response>"
  "mte411_services/VoltageToTempResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoltageToTemp-response)))
  "Returns string type for a service object of type 'VoltageToTemp-response"
  "mte411_services/VoltageToTempResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VoltageToTemp-response>)))
  "Returns md5sum for a message object of type '<VoltageToTemp-response>"
  "c1cf9257061f040a91bd584c238b489a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VoltageToTemp-response)))
  "Returns md5sum for a message object of type 'VoltageToTemp-response"
  "c1cf9257061f040a91bd584c238b489a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VoltageToTemp-response>)))
  "Returns full string definition for message of type '<VoltageToTemp-response>"
  (cl:format cl:nil "std_msgs/Float32 temperature ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VoltageToTemp-response)))
  "Returns full string definition for message of type 'VoltageToTemp-response"
  (cl:format cl:nil "std_msgs/Float32 temperature ~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VoltageToTemp-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'temperature))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VoltageToTemp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VoltageToTemp-response
    (cl:cons ':temperature (temperature msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VoltageToTemp)))
  'VoltageToTemp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VoltageToTemp)))
  'VoltageToTemp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoltageToTemp)))
  "Returns string type for a service object of type '<VoltageToTemp>"
  "mte411_services/VoltageToTemp")