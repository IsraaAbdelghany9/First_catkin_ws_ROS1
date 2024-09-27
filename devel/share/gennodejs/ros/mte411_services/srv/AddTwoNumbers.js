// Auto-generated. Do not edit!

// (in-package mte411_services.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddTwoNumbersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddTwoNumbersRequest
    // Serialize message field [a]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddTwoNumbersRequest
    let len;
    let data = new AddTwoNumbersRequest(null);
    // Deserialize message field [a]
    data.a = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mte411_services/AddTwoNumbersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f54ef9d6a6f99cfd895b9363e88ceaef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 a
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddTwoNumbersRequest(null);
    if (msg.a !== undefined) {
      resolved.a = std_msgs.msg.Float32.Resolve(msg.a)
    }
    else {
      resolved.a = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

class AddTwoNumbersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddTwoNumbersResponse
    // Serialize message field [b]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddTwoNumbersResponse
    let len;
    let data = new AddTwoNumbersResponse(null);
    // Deserialize message field [b]
    data.b = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mte411_services/AddTwoNumbersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4b0e1a70eeaed90402f830917d66082';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 b
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddTwoNumbersResponse(null);
    if (msg.b !== undefined) {
      resolved.b = std_msgs.msg.Float32.Resolve(msg.b)
    }
    else {
      resolved.b = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = {
  Request: AddTwoNumbersRequest,
  Response: AddTwoNumbersResponse,
  md5sum() { return 'dbb1fdc8e4a665b7e75ed83286de19ee'; },
  datatype() { return 'mte411_services/AddTwoNumbers'; }
};
