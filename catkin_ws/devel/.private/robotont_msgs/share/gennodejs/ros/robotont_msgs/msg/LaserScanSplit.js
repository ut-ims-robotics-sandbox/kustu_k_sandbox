// Auto-generated. Do not edit!

// (in-package robotont_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaserScanSplit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.leftMin = null;
      this.centerMin = null;
      this.rightMin = null;
      this.leftMean = null;
      this.centerMean = null;
      this.rightMean = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('leftMin')) {
        this.leftMin = initObj.leftMin
      }
      else {
        this.leftMin = 0.0;
      }
      if (initObj.hasOwnProperty('centerMin')) {
        this.centerMin = initObj.centerMin
      }
      else {
        this.centerMin = 0.0;
      }
      if (initObj.hasOwnProperty('rightMin')) {
        this.rightMin = initObj.rightMin
      }
      else {
        this.rightMin = 0.0;
      }
      if (initObj.hasOwnProperty('leftMean')) {
        this.leftMean = initObj.leftMean
      }
      else {
        this.leftMean = 0.0;
      }
      if (initObj.hasOwnProperty('centerMean')) {
        this.centerMean = initObj.centerMean
      }
      else {
        this.centerMean = 0.0;
      }
      if (initObj.hasOwnProperty('rightMean')) {
        this.rightMean = initObj.rightMean
      }
      else {
        this.rightMean = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaserScanSplit
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [leftMin]
    bufferOffset = _serializer.float64(obj.leftMin, buffer, bufferOffset);
    // Serialize message field [centerMin]
    bufferOffset = _serializer.float64(obj.centerMin, buffer, bufferOffset);
    // Serialize message field [rightMin]
    bufferOffset = _serializer.float64(obj.rightMin, buffer, bufferOffset);
    // Serialize message field [leftMean]
    bufferOffset = _serializer.float64(obj.leftMean, buffer, bufferOffset);
    // Serialize message field [centerMean]
    bufferOffset = _serializer.float64(obj.centerMean, buffer, bufferOffset);
    // Serialize message field [rightMean]
    bufferOffset = _serializer.float64(obj.rightMean, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaserScanSplit
    let len;
    let data = new LaserScanSplit(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [leftMin]
    data.leftMin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [centerMin]
    data.centerMin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightMin]
    data.rightMin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [leftMean]
    data.leftMean = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [centerMean]
    data.centerMean = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightMean]
    data.rightMean = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotont_msgs/LaserScanSplit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8be98bfd4e98a5f589a43bafb13b609';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #This msg defines a message for dividing laserscan into 3 separate distances
    #It provides mean and minimum values for the three sectors.
    
    time stamp
    
    float64 leftMin
    float64 centerMin
    float64 rightMin
    
    float64 leftMean
    float64 centerMean
    float64 rightMean
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaserScanSplit(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.leftMin !== undefined) {
      resolved.leftMin = msg.leftMin;
    }
    else {
      resolved.leftMin = 0.0
    }

    if (msg.centerMin !== undefined) {
      resolved.centerMin = msg.centerMin;
    }
    else {
      resolved.centerMin = 0.0
    }

    if (msg.rightMin !== undefined) {
      resolved.rightMin = msg.rightMin;
    }
    else {
      resolved.rightMin = 0.0
    }

    if (msg.leftMean !== undefined) {
      resolved.leftMean = msg.leftMean;
    }
    else {
      resolved.leftMean = 0.0
    }

    if (msg.centerMean !== undefined) {
      resolved.centerMean = msg.centerMean;
    }
    else {
      resolved.centerMean = 0.0
    }

    if (msg.rightMean !== undefined) {
      resolved.rightMean = msg.rightMean;
    }
    else {
      resolved.rightMean = 0.0
    }

    return resolved;
    }
};

module.exports = LaserScanSplit;
