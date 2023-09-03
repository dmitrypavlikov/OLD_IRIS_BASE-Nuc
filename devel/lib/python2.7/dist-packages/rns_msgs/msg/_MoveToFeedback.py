# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rns_msgs/MoveToFeedback.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rns_msgs.msg
import std_msgs.msg

class MoveToFeedback(genpy.Message):
  _md5sum = "e5d103605c7fc4819d625a164ef95674"
  _type = "rns_msgs/MoveToFeedback"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Progress
bool recalculation
int32 obstacleIndex
float32 obstacleDistance
# Current waypoint, if there is a waypoint path
int32 waypoint
# Mover state
int32 moverState
# Message for status update
string msg
# Current path
rns_msgs/AnnotatedPath path

================================================================================
MSG: rns_msgs/AnnotatedPath
std_msgs/Header header

# Path request id. 
int32 id
# Actual path
rns_msgs/Waypoint[] waypoints
# Should mover take care of waypoint directions
bool useDirections
# If path is reversed
bool reversed
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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: rns_msgs/Waypoint
# Desired position
float32 x
float32 y
# desired direction, in radians
float32 angle
# Max velocity for this waypoint, -1 if no limits
float32 maxVelocity
# Max deviation from this waypoint
float32 maxDeviation
# If target position is relevant
bool useDirection
# Max angle deviation
float32 angleDeviation"""
  __slots__ = ['recalculation','obstacleIndex','obstacleDistance','waypoint','moverState','msg','path']
  _slot_types = ['bool','int32','float32','int32','int32','string','rns_msgs/AnnotatedPath']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       recalculation,obstacleIndex,obstacleDistance,waypoint,moverState,msg,path

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoveToFeedback, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.recalculation is None:
        self.recalculation = False
      if self.obstacleIndex is None:
        self.obstacleIndex = 0
      if self.obstacleDistance is None:
        self.obstacleDistance = 0.
      if self.waypoint is None:
        self.waypoint = 0
      if self.moverState is None:
        self.moverState = 0
      if self.msg is None:
        self.msg = ''
      if self.path is None:
        self.path = rns_msgs.msg.AnnotatedPath()
    else:
      self.recalculation = False
      self.obstacleIndex = 0
      self.obstacleDistance = 0.
      self.waypoint = 0
      self.moverState = 0
      self.msg = ''
      self.path = rns_msgs.msg.AnnotatedPath()

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
      buff.write(_get_struct_Bif2i().pack(_x.recalculation, _x.obstacleIndex, _x.obstacleDistance, _x.waypoint, _x.moverState))
      _x = self.msg
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.path.header.seq, _x.path.header.stamp.secs, _x.path.header.stamp.nsecs))
      _x = self.path.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.path.id))
      length = len(self.path.waypoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.path.waypoints:
        _x = val1
        buff.write(_get_struct_5fBf().pack(_x.x, _x.y, _x.angle, _x.maxVelocity, _x.maxDeviation, _x.useDirection, _x.angleDeviation))
      _x = self
      buff.write(_get_struct_2B().pack(_x.path.useDirections, _x.path.reversed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.path is None:
        self.path = rns_msgs.msg.AnnotatedPath()
      end = 0
      _x = self
      start = end
      end += 17
      (_x.recalculation, _x.obstacleIndex, _x.obstacleDistance, _x.waypoint, _x.moverState,) = _get_struct_Bif2i().unpack(str[start:end])
      self.recalculation = bool(self.recalculation)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.msg = str[start:end].decode('utf-8')
      else:
        self.msg = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.path.header.seq, _x.path.header.stamp.secs, _x.path.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.path.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.path.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.path.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.path.waypoints = []
      for i in range(0, length):
        val1 = rns_msgs.msg.Waypoint()
        _x = val1
        start = end
        end += 25
        (_x.x, _x.y, _x.angle, _x.maxVelocity, _x.maxDeviation, _x.useDirection, _x.angleDeviation,) = _get_struct_5fBf().unpack(str[start:end])
        val1.useDirection = bool(val1.useDirection)
        self.path.waypoints.append(val1)
      _x = self
      start = end
      end += 2
      (_x.path.useDirections, _x.path.reversed,) = _get_struct_2B().unpack(str[start:end])
      self.path.useDirections = bool(self.path.useDirections)
      self.path.reversed = bool(self.path.reversed)
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
      _x = self
      buff.write(_get_struct_Bif2i().pack(_x.recalculation, _x.obstacleIndex, _x.obstacleDistance, _x.waypoint, _x.moverState))
      _x = self.msg
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.path.header.seq, _x.path.header.stamp.secs, _x.path.header.stamp.nsecs))
      _x = self.path.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.path.id))
      length = len(self.path.waypoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.path.waypoints:
        _x = val1
        buff.write(_get_struct_5fBf().pack(_x.x, _x.y, _x.angle, _x.maxVelocity, _x.maxDeviation, _x.useDirection, _x.angleDeviation))
      _x = self
      buff.write(_get_struct_2B().pack(_x.path.useDirections, _x.path.reversed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.path is None:
        self.path = rns_msgs.msg.AnnotatedPath()
      end = 0
      _x = self
      start = end
      end += 17
      (_x.recalculation, _x.obstacleIndex, _x.obstacleDistance, _x.waypoint, _x.moverState,) = _get_struct_Bif2i().unpack(str[start:end])
      self.recalculation = bool(self.recalculation)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.msg = str[start:end].decode('utf-8')
      else:
        self.msg = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.path.header.seq, _x.path.header.stamp.secs, _x.path.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.path.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.path.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.path.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.path.waypoints = []
      for i in range(0, length):
        val1 = rns_msgs.msg.Waypoint()
        _x = val1
        start = end
        end += 25
        (_x.x, _x.y, _x.angle, _x.maxVelocity, _x.maxDeviation, _x.useDirection, _x.angleDeviation,) = _get_struct_5fBf().unpack(str[start:end])
        val1.useDirection = bool(val1.useDirection)
        self.path.waypoints.append(val1)
      _x = self
      start = end
      end += 2
      (_x.path.useDirections, _x.path.reversed,) = _get_struct_2B().unpack(str[start:end])
      self.path.useDirections = bool(self.path.useDirections)
      self.path.reversed = bool(self.path.reversed)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_5fBf = None
def _get_struct_5fBf():
    global _struct_5fBf
    if _struct_5fBf is None:
        _struct_5fBf = struct.Struct("<5fBf")
    return _struct_5fBf
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_Bif2i = None
def _get_struct_Bif2i():
    global _struct_Bif2i
    if _struct_Bif2i is None:
        _struct_Bif2i = struct.Struct("<Bif2i")
    return _struct_Bif2i
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B