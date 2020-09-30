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

class LedModulePixel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.idx = null;
      this.color = null;
    }
    else {
      if (initObj.hasOwnProperty('idx')) {
        this.idx = initObj.idx
      }
      else {
        this.idx = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new ColorRGB();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedModulePixel
    // Serialize message field [idx]
    bufferOffset = _serializer.uint32(obj.idx, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = ColorRGB.serialize(obj.color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedModulePixel
    let len;
    let data = new LedModulePixel(null);
    // Deserialize message field [idx]
    data.idx = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = ColorRGB.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotont_msgs/LedModulePixel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e8715e10cbaf5916ac0df9876db527d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 idx
    robotont_msgs/ColorRGB color
    
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
    const resolved = new LedModulePixel(null);
    if (msg.idx !== undefined) {
      resolved.idx = msg.idx;
    }
    else {
      resolved.idx = 0
    }

    if (msg.color !== undefined) {
      resolved.color = ColorRGB.Resolve(msg.color)
    }
    else {
      resolved.color = new ColorRGB()
    }

    return resolved;
    }
};

module.exports = LedModulePixel;
