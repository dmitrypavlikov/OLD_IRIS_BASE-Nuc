# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rns_msgs/WifiState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class WifiState(genpy.Message):
  _md5sum = "d14117bc77c7a4058b700a839b5275da"
  _type = "rns_msgs/WifiState"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string ssid
string iface
int16 txPower
int16 noise
int16 quality
int16 ping
"""
  __slots__ = ['ssid','iface','txPower','noise','quality','ping']
  _slot_types = ['string','string','int16','int16','int16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ssid,iface,txPower,noise,quality,ping

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WifiState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.ssid is None:
        self.ssid = ''
      if self.iface is None:
        self.iface = ''
      if self.txPower is None:
        self.txPower = 0
      if self.noise is None:
        self.noise = 0
      if self.quality is None:
        self.quality = 0
      if self.ping is None:
        self.ping = 0
    else:
      self.ssid = ''
      self.iface = ''
      self.txPower = 0
      self.noise = 0
      self.quality = 0
      self.ping = 0

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
      _x = self.ssid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.iface
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4h().pack(_x.txPower, _x.noise, _x.quality, _x.ping))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ssid = str[start:end].decode('utf-8')
      else:
        self.ssid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.iface = str[start:end].decode('utf-8')
      else:
        self.iface = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.txPower, _x.noise, _x.quality, _x.ping,) = _get_struct_4h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.ssid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.iface
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4h().pack(_x.txPower, _x.noise, _x.quality, _x.ping))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ssid = str[start:end].decode('utf-8')
      else:
        self.ssid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.iface = str[start:end].decode('utf-8')
      else:
        self.iface = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.txPower, _x.noise, _x.quality, _x.ping,) = _get_struct_4h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4h = None
def _get_struct_4h():
    global _struct_4h
    if _struct_4h is None:
        _struct_4h = struct.Struct("<4h")
    return _struct_4h
