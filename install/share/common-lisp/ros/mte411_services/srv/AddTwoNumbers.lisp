; Auto-generated. Do not edit!


(cl:in-package mte411_services-srv)


;//! \htmlinclude AddTwoNumbers-request.msg.html

(cl:defclass <AddTwoNumbers-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass AddTwoNumbers-request (<AddTwoNumbers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoNumbers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoNumbers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mte411_services-srv:<AddTwoNumbers-request> is deprecated: use mte411_services-srv:AddTwoNumbers-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <AddTwoNumbers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mte411_services-srv:a-val is deprecated.  Use mte411_services-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoNumbers-request>) ostream)
  "Serializes a message object of type '<AddTwoNumbers-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTwoNumbers-request>) istream)
  "Deserializes a message object of type '<AddTwoNumbers-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTwoNumbers-request>)))
  "Returns string type for a service object of type '<AddTwoNumbers-request>"
  "mte411_services/AddTwoNumbersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoNumbers-request)))
  "Returns string type for a service object of type 'AddTwoNumbers-request"
  "mte411_services/AddTwoNumbersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTwoNumbers-request>)))
  "Returns md5sum for a message object of type '<AddTwoNumbers-request>"
  "dbb1fdc8e4a665b7e75ed83286de19ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoNumbers-request)))
  "Returns md5sum for a message object of type 'AddTwoNumbers-request"
  "dbb1fdc8e4a665b7e75ed83286de19ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoNumbers-request>)))
  "Returns full string definition for message of type '<AddTwoNumbers-request>"
  (cl:format cl:nil "std_msgs/Float32 a~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoNumbers-request)))
  "Returns full string definition for message of type 'AddTwoNumbers-request"
  (cl:format cl:nil "std_msgs/Float32 a~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoNumbers-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoNumbers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoNumbers-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude AddTwoNumbers-response.msg.html

(cl:defclass <AddTwoNumbers-response> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass AddTwoNumbers-response (<AddTwoNumbers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoNumbers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoNumbers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mte411_services-srv:<AddTwoNumbers-response> is deprecated: use mte411_services-srv:AddTwoNumbers-response instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <AddTwoNumbers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mte411_services-srv:b-val is deprecated.  Use mte411_services-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoNumbers-response>) ostream)
  "Serializes a message object of type '<AddTwoNumbers-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'b) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTwoNumbers-response>) istream)
  "Deserializes a message object of type '<AddTwoNumbers-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'b) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTwoNumbers-response>)))
  "Returns string type for a service object of type '<AddTwoNumbers-response>"
  "mte411_services/AddTwoNumbersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoNumbers-response)))
  "Returns string type for a service object of type 'AddTwoNumbers-response"
  "mte411_services/AddTwoNumbersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTwoNumbers-response>)))
  "Returns md5sum for a message object of type '<AddTwoNumbers-response>"
  "dbb1fdc8e4a665b7e75ed83286de19ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoNumbers-response)))
  "Returns md5sum for a message object of type 'AddTwoNumbers-response"
  "dbb1fdc8e4a665b7e75ed83286de19ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoNumbers-response>)))
  "Returns full string definition for message of type '<AddTwoNumbers-response>"
  (cl:format cl:nil "std_msgs/Float32 b~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoNumbers-response)))
  "Returns full string definition for message of type 'AddTwoNumbers-response"
  (cl:format cl:nil "std_msgs/Float32 b~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoNumbers-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoNumbers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoNumbers-response
    (cl:cons ':b (b msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddTwoNumbers)))
  'AddTwoNumbers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddTwoNumbers)))
  'AddTwoNumbers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoNumbers)))
  "Returns string type for a service object of type '<AddTwoNumbers>"
  "mte411_services/AddTwoNumbers")