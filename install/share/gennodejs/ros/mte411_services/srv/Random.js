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

class RandomRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Entery = null;
    }
    else {
      if (initObj.hasOwnProperty('Entery')) {
        this.Entery = initObj.Entery
      }
      else {
        this.Entery = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RandomRequest
    // Serialize message field [Entery]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.Entery, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RandomRequest
    let len;
    let data = new RandomRequest(null);
    // Deserialize message field [Entery]
    data.Entery = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mte411_services/RandomRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d7f55175650d81b01eafca1e617e8e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Bool Entery
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RandomRequest(null);
    if (msg.Entery !== undefined) {
      resolved.Entery = std_msgs.msg.Bool.Resolve(msg.Entery)
    }
    else {
      resolved.Entery = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

class RandomResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numder = null;
    }
    else {
      if (initObj.hasOwnProperty('numder')) {
        this.numder = initObj.numder
      }
      else {
        this.numder = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RandomResponse
    // Serialize message field [numder]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.numder, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RandomResponse
    let len;
    let data = new RandomResponse(null);
    // Deserialize message field [numder]
    data.numder = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mte411_services/RandomResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2e61a8ac1252960cbae79b2a4fd89bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 numder
    
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
    const resolved = new RandomResponse(null);
    if (msg.numder !== undefined) {
      resolved.numder = std_msgs.msg.Float32.Resolve(msg.numder)
    }
    else {
      resolved.numder = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = {
  Request: RandomRequest,
  Response: RandomResponse,
  md5sum() { return '2880ddbf81389eed9201b6ff083b33fa'; },
  datatype() { return 'mte411_services/Random'; }
};
