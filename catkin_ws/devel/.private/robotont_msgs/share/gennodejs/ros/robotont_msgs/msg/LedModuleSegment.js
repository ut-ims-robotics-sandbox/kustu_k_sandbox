// Auto-generated. Do not edit!

// (in-package robotont_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ColorRGB = require('./ColorRGB.js');

//-----------------------------------------------------------

class LedModuleSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.idx_start = null;
      this.colors = null;
    }
    else {
      if (initObj.hasOwnProperty('idx_start')) {
        this.idx_start = initObj.idx_start
      }
      else {
        this.idx_start = 0;
      }
      if (initObj.hasOwnProperty('colors')) {
        this.colors = initObj.colors
      }
      else {
        this.colors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedModuleSegment
    // Serialize message field [idx_start]
    bufferOffset = _serializer.uint32(obj.idx_start, buffer, bufferOffset);
    // Serialize message field [colors]
    // Serialize the length for message field [colors]
    bufferOffset = _serializer.uint32(obj.colors.length, buffer, bufferOffset);
    obj.colors.forEach((val) => {
      bufferOffset = ColorRGB.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedModuleSegment
    let len;
    let data = new LedModuleSegment(null);
    // Deserialize message field [idx_start]
    data.idx_start = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [colors]
    // Deserialize array length for message field [colors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.colors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.colors[i] = ColorRGB.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 3 * object.colors.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotont_msgs/LedModuleSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '074116e38328a837ef6928799ed4707a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 idx_start
    robotont_msgs/ColorRGB[] colors
    
    ================================================================================
    MSG: robotont_msgs/ColorRGB
    #Red, Green, Blue intensities in range of 0-255.
    uint8 r
    uint8 g
    uint8 b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedModuleSegment(null);
    if (msg.idx_start !== undefined) {
      resolved.idx_start = msg.idx_start;
    }
    else {
      resolved.idx_start = 0
    }

    if (msg.colors !== undefined) {
      resolved.colors = new Array(msg.colors.length);
      for (let i = 0; i < resolved.colors.length; ++i) {
        resolved.colors[i] = ColorRGB.Resolve(msg.colors[i]);
      }
    }
    else {
      resolved.colors = []
    }

    return resolved;
    }
};

module.exports = LedModuleSegment;
