// Auto-generated. Do not edit!

// (in-package leap_motion_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Finger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.joint_position = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('joint_position')) {
        this.joint_position = initObj.joint_position
      }
      else {
        this.joint_position = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Finger
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [joint_position]
    // Serialize the length for message field [joint_position]
    bufferOffset = _serializer.uint32(obj.joint_position.length, buffer, bufferOffset);
    obj.joint_position.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Finger
    let len;
    let data = new Finger(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [joint_position]
    // Deserialize array length for message field [joint_position]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_position = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_position[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.joint_position.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leap_motion_controller/Finger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '395c50f3dc2ad1331c9fa184599413c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TYPE_THUMB = 0
    uint8 TYPE_INDEX = 1
    uint8 TYPE_MIDDLE = 2
    uint8 TYPE_RING = 3
    uint8 TYPE_PINKY = 4
    
    uint8 type
    geometry_msgs/Point[] joint_position
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Finger(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.joint_position !== undefined) {
      resolved.joint_position = new Array(msg.joint_position.length);
      for (let i = 0; i < resolved.joint_position.length; ++i) {
        resolved.joint_position[i] = geometry_msgs.msg.Point.Resolve(msg.joint_position[i]);
      }
    }
    else {
      resolved.joint_position = []
    }

    return resolved;
    }
};

// Constants for message
Finger.Constants = {
  TYPE_THUMB: 0,
  TYPE_INDEX: 1,
  TYPE_MIDDLE: 2,
  TYPE_RING: 3,
  TYPE_PINKY: 4,
}

module.exports = Finger;
