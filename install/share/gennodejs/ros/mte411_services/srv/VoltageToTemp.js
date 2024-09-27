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

class VoltageToTempRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltage = null;
    }
    else {
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VoltageToTempRequest
    // Serialize message field [voltage]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.voltage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VoltageToTempRequest
    let len;
    let data = new VoltageToTempRequest(null);
    // Deserialize message field [voltage]
    data.voltage = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mte411_services/VoltageToTempRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ded52337d62e5e8cd925618893829d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 voltage 
    
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
    const resolved = new VoltageToTempRequest(null);
    if (msg.voltage !== undefined) {
      resolved.voltage = std_msgs.msg.Float32.Resolve(msg.voltage)
    }
    else {
      resolved.voltage = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

class VoltageToTempResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VoltageToTempResponse
    // Serialize message field [temperature]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VoltageToTempResponse
    let len;
    let data = new VoltageToTempResponse(null);
    // Deserialize message field [temperature]
    data.temperature = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mte411_services/VoltageToTempResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef84ef3026ebaa21b37f5b167de3d809';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 temperature 
    
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
    const resolved = new VoltageToTempResponse(null);
    if (msg.temperature !== undefined) {
      resolved.temperature = std_msgs.msg.Float32.Resolve(msg.temperature)
    }
    else {
      resolved.temperature = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = {
  Request: VoltageToTempRequest,
  Response: VoltageToTempResponse,
  md5sum() { return 'c1cf9257061f040a91bd584c238b489a'; },
  datatype() { return 'mte411_services/VoltageToTemp'; }
};
