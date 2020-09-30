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

class PowerSupply {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current = null;
      this.voltage = null;
      this.estop_pressed = null;
    }
    else {
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('estop_pressed')) {
        this.estop_pressed = initObj.estop_pressed
      }
      else {
        this.estop_pressed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerSupply
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [estop_pressed]
    bufferOffset = _serializer.bool(obj.estop_pressed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerSupply
    let len;
    let data = new PowerSupply(null);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [estop_pressed]
    data.estop_pressed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotont_msgs/PowerSupply';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77b9b8496ff236da784fb46719fa61bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Measured current consumption 
    float32 current
    
    # Measured voltage level of the battery
    float32 voltage
    
    # Indicates whether e-stop button is pressed or not
    bool estop_pressed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerSupply(null);
    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.estop_pressed !== undefined) {
      resolved.estop_pressed = msg.estop_pressed;
    }
    else {
      resolved.estop_pressed = false
    }

    return resolved;
    }
};

module.exports = PowerSupply;
