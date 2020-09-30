# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from leap_motion/leap.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class leap(genpy.Message):
  _md5sum = "3e9a0dc7fd1a98f1d7489e9011c78807"
  _type = "leap_motion/leap"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """##################################################
## Deprecated and will be removed in the future ##
##################################################

Header header

float64[3] hand_direction
float64[3] hand_normal
float64[3] hand_palm_pos
float64 hand_pitch
float64 hand_roll
float64 hand_yaw

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
"""
  __slots__ = ['header','hand_direction','hand_normal','hand_palm_pos','hand_pitch','hand_roll','hand_yaw']
  _slot_types = ['std_msgs/Header','float64[3]','float64[3]','float64[3]','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,hand_direction,hand_normal,hand_palm_pos,hand_pitch,hand_roll,hand_yaw

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(leap, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.hand_direction is None:
        self.hand_direction = [0.] * 3
      if self.hand_normal is None:
        self.hand_normal = [0.] * 3
      if self.hand_palm_pos is None:
        self.hand_palm_pos = [0.] * 3
      if self.hand_pitch is None:
        self.hand_pitch = 0.
      if self.hand_roll is None:
        self.hand_roll = 0.
      if self.hand_yaw is None:
        self.hand_yaw = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.hand_direction = [0.] * 3
      self.hand_normal = [0.] * 3
      self.hand_palm_pos = [0.] * 3
      self.hand_pitch = 0.
      self.hand_roll = 0.
      self.hand_yaw = 0.

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      buff.write(_get_struct_3d().pack(*self.hand_direction))
      buff.write(_get_struct_3d().pack(*self.hand_normal))
      buff.write(_get_struct_3d().pack(*self.hand_palm_pos))
      _x = self
      buff.write(_get_struct_3d().pack(_x.hand_pitch, _x.hand_roll, _x.hand_yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 24
      self.hand_direction = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 24
      self.hand_normal = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 24
      self.hand_palm_pos = _get_struct_3d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.hand_pitch, _x.hand_roll, _x.hand_yaw,) = _get_struct_3d().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      buff.write(self.hand_direction.tostring())
      buff.write(self.hand_normal.tostring())
      buff.write(self.hand_palm_pos.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.hand_pitch, _x.hand_roll, _x.hand_yaw))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 24
      self.hand_direction = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=3)
      start = end
      end += 24
      self.hand_normal = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=3)
      start = end
      end += 24
      self.hand_palm_pos = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=3)
      _x = self
      start = end
      end += 24
      (_x.hand_pitch, _x.hand_roll, _x.hand_yaw,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
