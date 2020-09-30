# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from leap_motion_controller/Hand.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class Hand(genpy.Message):
  _md5sum = "51609a3515f052500f2602710bb2f7ae"
  _type = "leap_motion_controller/Hand"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:
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
float64 z"""
  __slots__ = ['is_present','palm_pose','palm_velocity','sphere_radius','pinch_strength','key_tap']
  _slot_types = ['bool','geometry_msgs/PoseStamped','geometry_msgs/Vector3Stamped','float32','float32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       is_present,palm_pose,palm_velocity,sphere_radius,pinch_strength,key_tap

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Hand, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.is_present is None:
        self.is_present = False
      if self.palm_pose is None:
        self.palm_pose = geometry_msgs.msg.PoseStamped()
      if self.palm_velocity is None:
        self.palm_velocity = geometry_msgs.msg.Vector3Stamped()
      if self.sphere_radius is None:
        self.sphere_radius = 0.
      if self.pinch_strength is None:
        self.pinch_strength = 0.
      if self.key_tap is None:
        self.key_tap = False
    else:
      self.is_present = False
      self.palm_pose = geometry_msgs.msg.PoseStamped()
      self.palm_velocity = geometry_msgs.msg.Vector3Stamped()
      self.sphere_radius = 0.
      self.pinch_strength = 0.
      self.key_tap = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_B3I().pack(_x.is_present, _x.palm_pose.header.seq, _x.palm_pose.header.stamp.secs, _x.palm_pose.header.stamp.nsecs))
      _x = self.palm_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d3I().pack(_x.palm_pose.pose.position.x, _x.palm_pose.pose.position.y, _x.palm_pose.pose.position.z, _x.palm_pose.pose.orientation.x, _x.palm_pose.pose.orientation.y, _x.palm_pose.pose.orientation.z, _x.palm_pose.pose.orientation.w, _x.palm_velocity.header.seq, _x.palm_velocity.header.stamp.secs, _x.palm_velocity.header.stamp.nsecs))
      _x = self.palm_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d2fB().pack(_x.palm_velocity.vector.x, _x.palm_velocity.vector.y, _x.palm_velocity.vector.z, _x.sphere_radius, _x.pinch_strength, _x.key_tap))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.palm_pose is None:
        self.palm_pose = geometry_msgs.msg.PoseStamped()
      if self.palm_velocity is None:
        self.palm_velocity = geometry_msgs.msg.Vector3Stamped()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.is_present, _x.palm_pose.header.seq, _x.palm_pose.header.stamp.secs, _x.palm_pose.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.is_present = bool(self.is_present)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.palm_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.palm_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.palm_pose.pose.position.x, _x.palm_pose.pose.position.y, _x.palm_pose.pose.position.z, _x.palm_pose.pose.orientation.x, _x.palm_pose.pose.orientation.y, _x.palm_pose.pose.orientation.z, _x.palm_pose.pose.orientation.w, _x.palm_velocity.header.seq, _x.palm_velocity.header.stamp.secs, _x.palm_velocity.header.stamp.nsecs,) = _get_struct_7d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.palm_velocity.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.palm_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 33
      (_x.palm_velocity.vector.x, _x.palm_velocity.vector.y, _x.palm_velocity.vector.z, _x.sphere_radius, _x.pinch_strength, _x.key_tap,) = _get_struct_3d2fB().unpack(str[start:end])
      self.key_tap = bool(self.key_tap)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_B3I().pack(_x.is_present, _x.palm_pose.header.seq, _x.palm_pose.header.stamp.secs, _x.palm_pose.header.stamp.nsecs))
      _x = self.palm_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d3I().pack(_x.palm_pose.pose.position.x, _x.palm_pose.pose.position.y, _x.palm_pose.pose.position.z, _x.palm_pose.pose.orientation.x, _x.palm_pose.pose.orientation.y, _x.palm_pose.pose.orientation.z, _x.palm_pose.pose.orientation.w, _x.palm_velocity.header.seq, _x.palm_velocity.header.stamp.secs, _x.palm_velocity.header.stamp.nsecs))
      _x = self.palm_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d2fB().pack(_x.palm_velocity.vector.x, _x.palm_velocity.vector.y, _x.palm_velocity.vector.z, _x.sphere_radius, _x.pinch_strength, _x.key_tap))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.palm_pose is None:
        self.palm_pose = geometry_msgs.msg.PoseStamped()
      if self.palm_velocity is None:
        self.palm_velocity = geometry_msgs.msg.Vector3Stamped()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.is_present, _x.palm_pose.header.seq, _x.palm_pose.header.stamp.secs, _x.palm_pose.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.is_present = bool(self.is_present)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.palm_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.palm_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.palm_pose.pose.position.x, _x.palm_pose.pose.position.y, _x.palm_pose.pose.position.z, _x.palm_pose.pose.orientation.x, _x.palm_pose.pose.orientation.y, _x.palm_pose.pose.orientation.z, _x.palm_pose.pose.orientation.w, _x.palm_velocity.header.seq, _x.palm_velocity.header.stamp.secs, _x.palm_velocity.header.stamp.nsecs,) = _get_struct_7d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.palm_velocity.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.palm_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 33
      (_x.palm_velocity.vector.x, _x.palm_velocity.vector.y, _x.palm_velocity.vector.z, _x.sphere_radius, _x.pinch_strength, _x.key_tap,) = _get_struct_3d2fB().unpack(str[start:end])
      self.key_tap = bool(self.key_tap)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d2fB = None
def _get_struct_3d2fB():
    global _struct_3d2fB
    if _struct_3d2fB is None:
        _struct_3d2fB = struct.Struct("<3d2fB")
    return _struct_3d2fB
_struct_7d3I = None
def _get_struct_7d3I():
    global _struct_7d3I
    if _struct_7d3I is None:
        _struct_7d3I = struct.Struct("<7d3I")
    return _struct_7d3I
_struct_B3I = None
def _get_struct_B3I():
    global _struct_B3I
    if _struct_B3I is None:
        _struct_B3I = struct.Struct("<B3I")
    return _struct_B3I
