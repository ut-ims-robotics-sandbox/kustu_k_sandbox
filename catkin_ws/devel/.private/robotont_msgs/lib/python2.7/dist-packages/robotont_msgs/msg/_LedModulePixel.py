# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robotont_msgs/LedModulePixel.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import robotont_msgs.msg

class LedModulePixel(genpy.Message):
  _md5sum = "3e8715e10cbaf5916ac0df9876db527d"
  _type = "robotont_msgs/LedModulePixel"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint32 idx
robotont_msgs/ColorRGB color

================================================================================
MSG: robotont_msgs/ColorRGB
#Red, Green, Blue intensities in range of 0-255.
uint8 r
uint8 g
uint8 b
"""
  __slots__ = ['idx','color']
  _slot_types = ['uint32','robotont_msgs/ColorRGB']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       idx,color

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LedModulePixel, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.idx is None:
        self.idx = 0
      if self.color is None:
        self.color = robotont_msgs.msg.ColorRGB()
    else:
      self.idx = 0
      self.color = robotont_msgs.msg.ColorRGB()

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
      buff.write(_get_struct_I3B().pack(_x.idx, _x.color.r, _x.color.g, _x.color.b))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.color is None:
        self.color = robotont_msgs.msg.ColorRGB()
      end = 0
      _x = self
      start = end
      end += 7
      (_x.idx, _x.color.r, _x.color.g, _x.color.b,) = _get_struct_I3B().unpack(str[start:end])
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
      buff.write(_get_struct_I3B().pack(_x.idx, _x.color.r, _x.color.g, _x.color.b))
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
      if self.color is None:
        self.color = robotont_msgs.msg.ColorRGB()
      end = 0
      _x = self
      start = end
      end += 7
      (_x.idx, _x.color.r, _x.color.g, _x.color.b,) = _get_struct_I3B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_I3B = None
def _get_struct_I3B():
    global _struct_I3B
    if _struct_I3B is None:
        _struct_I3B = struct.Struct("<I3B")
    return _struct_I3B
