; Auto-generated. Do not edit!


(cl:in-package mte411_services-srv)


;//! \htmlinclude Encoder-request.msg.html

(cl:defclass <Encoder-request> (roslisp-msg-protocol:ros-message)
  ((pulse
    :reader pulse
    :initarg :pulse
    :type std_msgs-msg:Int8
    :initform (cl:make-instance 'std_msgs-msg:Int8)))
)

(cl:defclass Encoder-request (<Encoder-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Encoder-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Encoder-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mte411_services-srv:<Encoder-request> is deprecated: use mte411_services-srv:Encoder-request instead.")))

(cl:ensure-generic-function 'pulse-val :lambda-list '(m))
(cl:defmethod pulse-val ((m <Encoder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mte411_services-srv:pulse-val is deprecated.  Use mte411_services-srv:pulse instead.")
  (pulse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Encoder-request>) ostream)
  "Serializes a message object of type '<Encoder-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pulse) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Encoder-request>) istream)
  "Deserializes a message object of type '<Encoder-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pulse) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Encoder-request>)))
  "Returns string type for a service object of type '<Encoder-request>"
  "mte411_services/EncoderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Encoder-request)))
  "Returns string type for a service object of type 'Encoder-request"
  "mte411_services/EncoderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Encoder-request>)))
  "Returns md5sum for a message object of type '<Encoder-request>"
  "11323230cb3de4d996e64a4ff33ac375")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Encoder-request)))
  "Returns md5sum for a message object of type 'Encoder-request"
  "11323230cb3de4d996e64a4ff33ac375")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Encoder-request>)))
  "Returns full string definition for message of type '<Encoder-request>"
  (cl:format cl:nil "std_msgs/Int8 pulse~%~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Encoder-request)))
  "Returns full string definition for message of type 'Encoder-request"
  (cl:format cl:nil "std_msgs/Int8 pulse~%~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Encoder-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pulse))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Encoder-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Encoder-request
    (cl:cons ':pulse (pulse msg))
))
;//! \htmlinclude Encoder-response.msg.html

(cl:defclass <Encoder-response> (roslisp-msg-protocol:ros-message)
  ((RPM
    :reader RPM
    :initarg :RPM
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Encoder-response (<Encoder-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Encoder-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Encoder-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mte411_services-srv:<Encoder-response> is deprecated: use mte411_services-srv:Encoder-response instead.")))

(cl:ensure-generic-function 'RPM-val :lambda-list '(m))
(cl:defmethod RPM-val ((m <Encoder-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mte411_services-srv:RPM-val is deprecated.  Use mte411_services-srv:RPM instead.")
  (RPM m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Encoder-response>) ostream)
  "Serializes a message object of type '<Encoder-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RPM) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Encoder-response>) istream)
  "Deserializes a message object of type '<Encoder-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RPM) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Encoder-response>)))
  "Returns string type for a service object of type '<Encoder-response>"
  "mte411_services/EncoderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Encoder-response)))
  "Returns string type for a service object of type 'Encoder-response"
  "mte411_services/EncoderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Encoder-response>)))
  "Returns md5sum for a message object of type '<Encoder-response>"
  "11323230cb3de4d996e64a4ff33ac375")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Encoder-response)))
  "Returns md5sum for a message object of type 'Encoder-response"
  "11323230cb3de4d996e64a4ff33ac375")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Encoder-response>)))
  "Returns full string definition for message of type '<Encoder-response>"
  (cl:format cl:nil "std_msgs/Float32 RPM~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Encoder-response)))
  "Returns full string definition for message of type 'Encoder-response"
  (cl:format cl:nil "std_msgs/Float32 RPM~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Encoder-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RPM))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Encoder-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Encoder-response
    (cl:cons ':RPM (RPM msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Encoder)))
  'Encoder-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Encoder)))
  'Encoder-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Encoder)))
  "Returns string type for a service object of type '<Encoder>"
  "mte411_services/Encoder")