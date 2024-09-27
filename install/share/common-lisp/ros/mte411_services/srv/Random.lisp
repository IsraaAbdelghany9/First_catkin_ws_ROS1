; Auto-generated. Do not edit!


(cl:in-package mte411_services-srv)


;//! \htmlinclude Random-request.msg.html

(cl:defclass <Random-request> (roslisp-msg-protocol:ros-message)
  ((Entery
    :reader Entery
    :initarg :Entery
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass Random-request (<Random-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Random-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Random-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mte411_services-srv:<Random-request> is deprecated: use mte411_services-srv:Random-request instead.")))

(cl:ensure-generic-function 'Entery-val :lambda-list '(m))
(cl:defmethod Entery-val ((m <Random-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mte411_services-srv:Entery-val is deprecated.  Use mte411_services-srv:Entery instead.")
  (Entery m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Random-request>) ostream)
  "Serializes a message object of type '<Random-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Entery) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Random-request>) istream)
  "Deserializes a message object of type '<Random-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Entery) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Random-request>)))
  "Returns string type for a service object of type '<Random-request>"
  "mte411_services/RandomRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Random-request)))
  "Returns string type for a service object of type 'Random-request"
  "mte411_services/RandomRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Random-request>)))
  "Returns md5sum for a message object of type '<Random-request>"
  "2880ddbf81389eed9201b6ff083b33fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Random-request)))
  "Returns md5sum for a message object of type 'Random-request"
  "2880ddbf81389eed9201b6ff083b33fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Random-request>)))
  "Returns full string definition for message of type '<Random-request>"
  (cl:format cl:nil "std_msgs/Bool Entery~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Random-request)))
  "Returns full string definition for message of type 'Random-request"
  (cl:format cl:nil "std_msgs/Bool Entery~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Random-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Entery))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Random-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Random-request
    (cl:cons ':Entery (Entery msg))
))
;//! \htmlinclude Random-response.msg.html

(cl:defclass <Random-response> (roslisp-msg-protocol:ros-message)
  ((numder
    :reader numder
    :initarg :numder
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Random-response (<Random-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Random-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Random-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mte411_services-srv:<Random-response> is deprecated: use mte411_services-srv:Random-response instead.")))

(cl:ensure-generic-function 'numder-val :lambda-list '(m))
(cl:defmethod numder-val ((m <Random-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mte411_services-srv:numder-val is deprecated.  Use mte411_services-srv:numder instead.")
  (numder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Random-response>) ostream)
  "Serializes a message object of type '<Random-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'numder) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Random-response>) istream)
  "Deserializes a message object of type '<Random-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'numder) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Random-response>)))
  "Returns string type for a service object of type '<Random-response>"
  "mte411_services/RandomResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Random-response)))
  "Returns string type for a service object of type 'Random-response"
  "mte411_services/RandomResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Random-response>)))
  "Returns md5sum for a message object of type '<Random-response>"
  "2880ddbf81389eed9201b6ff083b33fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Random-response)))
  "Returns md5sum for a message object of type 'Random-response"
  "2880ddbf81389eed9201b6ff083b33fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Random-response>)))
  "Returns full string definition for message of type '<Random-response>"
  (cl:format cl:nil "std_msgs/Float32 numder~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Random-response)))
  "Returns full string definition for message of type 'Random-response"
  (cl:format cl:nil "std_msgs/Float32 numder~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Random-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'numder))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Random-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Random-response
    (cl:cons ':numder (numder msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Random)))
  'Random-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Random)))
  'Random-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Random)))
  "Returns string type for a service object of type '<Random>"
  "mte411_services/Random")