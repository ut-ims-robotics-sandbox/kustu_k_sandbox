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

class Hand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_present = null;
      this.palm_pose = null;
      this.palm_velocity = null;
      this.sphere_radius = null;
      this.pinch_strength = null;
      this.key_tap = null;
    }
    else {
      if (initObj.hasOwnProperty('is_present')) {
        this.is_present = initObj.is_present
      }
      else {
        this.is_present = false;
      }
      if (initObj.hasOwnProperty('palm_pose')) {
        this.palm_pose = initObj.palm_pose
      }
      else {
        this.palm_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('palm_velocity')) {
        this.palm_velocity = initObj.palm_velocity
      }
      else {
        this.palm_velocity = new geometry_msgs.msg.Vector3Stamped();
      }
      if (initObj.hasOwnProperty('sphere_radius')) {
        this.sphere_radius = initObj.sphere_radius
      }
      else {
        this.sphere_radius = 0.0;
      }
      if (initObj.hasOwnProperty('pinch_strength')) {
        this.pinch_strength = initObj.pinch_strength
      }
      else {
        this.pinch_strength = 0.0;
      }
      if (initObj.hasOwnProperty('key_tap')) {
        this.key_tap = initObj.key_tap
      }
      else {
        this.key_tap = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Hand
    // Serialize message field [is_present]
    bufferOffset = _serializer.bool(obj.is_present, buffer, bufferOffset);
    // Serialize message field [palm_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.palm_pose, buffer, bufferOffset);
    // Serialize message field [palm_velocity]
    bufferOffset = geometry_msgs.msg.Vector3Stamped.serialize(obj.palm_velocity, buffer, bufferOffset);
    // Serialize message field [sphere_radius]
    bufferOffset = _serializer.float32(obj.sphere_radius, buffer, bufferOffset);
    // Serialize message field [pinch_strength]
    bufferOffset = _serializer.float32(obj.pinch_strength, buffer, bufferOffset);
    // Serialize message field [key_tap]
    bufferOffset = _serializer.bool(obj.key_tap, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Hand
    let len;
    let data = new Hand(null);
    // Deserialize message field [is_present]
    data.is_present = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [palm_pose]
    data.palm_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [palm_velocity]
    data.palm_velocity = geometry_msgs.msg.Vector3Stamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [sphere_radius]
    data.sphere_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pinch_strength]
    data.pinch_strength = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [key_tap]
    data.key_tap = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.palm_pose);
    length += geometry_msgs.msg.Vector3Stamped.getMessageSize(object.palm_velocity);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leap_motion_controller/Hand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51609a3515f052500f2602710bb2f7ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Hand(null);
    if (msg.is_present !== undefined) {
      resolved.is_present = msg.is_present;
    }
    else {
      resolved.is_present = false
    }

    if (msg.palm_pose !== undefined) {
      resolved.palm_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.palm_pose)
    }
    else {
      resolved.palm_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.palm_velocity !== undefined) {
      resolved.palm_velocity = geometry_msgs.msg.Vector3Stamped.Resolve(msg.palm_velocity)
    }
    else {
      resolved.palm_velocity = new geometry_msgs.msg.Vector3Stamped()
    }

    if (msg.sphere_radius !== undefined) {
      resolved.sphere_radius = msg.sphere_radius;
    }
    else {
      resolved.sphere_radius = 0.0
    }

    if (msg.pinch_strength !== undefined) {
      resolved.pinch_strength = msg.pinch_strength;
    }
    else {
      resolved.pinch_strength = 0.0
    }

    if (msg.key_tap !== undefined) {
      resolved.key_tap = msg.key_tap;
    }
    else {
      resolved.key_tap = false
    }

    return resolved;
    }
};

module.exports = Hand;
