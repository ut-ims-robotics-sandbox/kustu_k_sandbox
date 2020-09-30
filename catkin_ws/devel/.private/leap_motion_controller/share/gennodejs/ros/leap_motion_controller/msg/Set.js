// Auto-generated. Do not edit!

// (in-package leap_motion_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Hand = require('./Hand.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Set {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_hand = null;
      this.right_hand = null;
      this.extended_fingers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_hand')) {
        this.left_hand = initObj.left_hand
      }
      else {
        this.left_hand = new Hand();
      }
      if (initObj.hasOwnProperty('right_hand')) {
        this.right_hand = initObj.right_hand
      }
      else {
        this.right_hand = new Hand();
      }
      if (initObj.hasOwnProperty('extended_fingers')) {
        this.extended_fingers = initObj.extended_fingers
      }
      else {
        this.extended_fingers = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Set
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_hand]
    bufferOffset = Hand.serialize(obj.left_hand, buffer, bufferOffset);
    // Serialize message field [right_hand]
    bufferOffset = Hand.serialize(obj.right_hand, buffer, bufferOffset);
    // Serialize message field [extended_fingers]
    bufferOffset = _serializer.uint8(obj.extended_fingers, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Set
    let len;
    let data = new Set(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_hand]
    data.left_hand = Hand.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_hand]
    data.right_hand = Hand.deserialize(buffer, bufferOffset);
    // Deserialize message field [extended_fingers]
    data.extended_fingers = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Hand.getMessageSize(object.left_hand);
    length += Hand.getMessageSize(object.right_hand);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leap_motion_controller/Set';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1f63767b76560dd9b983103a3c6a895';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:
    #    z forward
    #    x right
    #    y down
    
    std_msgs/Header header
    
    leap_motion_controller/Hand left_hand
    
    leap_motion_controller/Hand right_hand
    
    uint8 extended_fingers
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: leap_motion_controller/Hand
    # For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:
    #    z forward
    #    x right
    #    y down
    
    bool is_present					# TRUE if this hand is a valid hand (left or right), FALSE otherwise.
    geometry_msgs/PoseStamped palm_pose		# Contains the center position of the palm in meters from the Leap Motion Controller origin and the quaternion orientation of the palm.
    geometry_msgs/Vector3Stamped palm_velocity	# The rate of change of the palm position in meters per second. 
    float32 sphere_radius				# The radius of a sphere fit to the curvature of this hand. This sphere is placed roughly as if the hand were holding a ball. Thus the size of the sphere decreases as the fingers are curled into a fist.
    float32 pinch_strength				# The strength is zero for an open hand, and blends to 1.0 when a pinching hand pose is recognized.
    bool key_tap					# TRUE if KEY_TAP gesture has been detected on this hand, FALSE otherwise.
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new Set(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_hand !== undefined) {
      resolved.left_hand = Hand.Resolve(msg.left_hand)
    }
    else {
      resolved.left_hand = new Hand()
    }

    if (msg.right_hand !== undefined) {
      resolved.right_hand = Hand.Resolve(msg.right_hand)
    }
    else {
      resolved.right_hand = new Hand()
    }

    if (msg.extended_fingers !== undefined) {
      resolved.extended_fingers = msg.extended_fingers;
    }
    else {
      resolved.extended_fingers = 0
    }

    return resolved;
    }
};

module.exports = Set;
