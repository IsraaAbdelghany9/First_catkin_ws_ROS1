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

class EncoderRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pulse = null;
    }
    else {
      if (initObj.hasOwnProperty('pulse')) {
        this.pulse = initObj.pulse
      }
      else {
        this.pulse = new std_msgs.msg.Int8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderRequest
    // Serialize message field [pulse]
    bufferOffset = std_msgs.msg.Int8.serialize(obj.pulse, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderRequest
    let len;
    let data = new EncoderRequest(null);
    // Deserialize message field [pulse]
    data.pulse = std_msgs.msg.Int8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mte411_services/EncoderRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5a7ffe2a5c0abd253bcf837aec25bbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int8 pulse
    
    ================================================================================
    MSG: std_msgs/Int8
    int8 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EncoderRequest(null);
    if (msg.pulse !== undefined) {
      resolved.pulse = std_msgs.msg.Int8.Resolve(msg.pulse)
    }
    else {
      resolved.pulse = new std_msgs.msg.Int8()
    }

    return resolved;
    }
};

class EncoderResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RPM = null;
    }
    else {
      if (initObj.hasOwnProperty('RPM')) {
        this.RPM = initObj.RPM
      }
      else {
        this.RPM = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderResponse
    // Serialize message field [RPM]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.RPM, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderResponse
    let len;
    let data = new EncoderResponse(null);
    // Deserialize message field [RPM]
    data.RPM = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mte411_services/EncoderResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8454e229bf7eebfb11877ce1b6826938';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 RPM
    
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
    const resolved = new EncoderResponse(null);
    if (msg.RPM !== undefined) {
      resolved.RPM = std_msgs.msg.Float32.Resolve(msg.RPM)
    }
    else {
      resolved.RPM = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = {
  Request: EncoderRequest,
  Response: EncoderResponse,
  md5sum() { return '11323230cb3de4d996e64a4ff33ac375'; },
  datatype() { return 'mte411_services/Encoder'; }
};
