# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rns_msgs/MoveToActionFeedback.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rns_msgs.msg
import genpy
import actionlib_msgs.msg
import std_msgs.msg

class MoveToActionFeedback(genpy.Message):
  _md5sum = "672d34febec5b41f553aaff0a2bb9ad5"
  _type = "rns_msgs/MoveToActionFeedback"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
MoveToFeedback feedback

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
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: rns_msgs/MoveToFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
  __slots__ = ['header','status','feedback']
  _slot_types = ['std_msgs/Header','actionlib_msgs/GoalStatus','rns_msgs/MoveToFeedback']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,status,feedback

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoveToActionFeedback, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.status is None:
        self.status = actionlib_msgs.msg.GoalStatus()
      if self.feedback is None:
        self.feedback = rns_msgs.msg.MoveToFeedback()
    else:
      self.header = std_msgs.msg.Header()
      self.status = actionlib_msgs.msg.GoalStatus()
      self.feedback = rns_msgs.msg.MoveToFeedback()

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
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.status.goal_id.stamp.secs, _x.status.goal_id.stamp.nsecs))
      _x = self.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.status.status))
      _x = self.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Bif2i().pack(_x.feedback.recalculation, _x.feedback.obstacleIndex, _x.feedback.obstacleDistance, _x.feedback.waypoint, _x.feedback.moverState))
      _x = self.feedback.msg
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.feedback.path.header.seq, _x.feedback.path.header.stamp.secs, _x.feedback.path.header.stamp.nsecs))
      _x = self.feedback.path.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.feedback.path.id))
      length = len(self.feedback.path.waypoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.feedback.path.waypoints:
        _x = val1
        buff.write(_get_struct_5fBf().pack(_x.x, _x.y, _x.angle, _x.maxVelocity, _x.maxDeviation, _x.useDirection, _x.angleDeviation))
      _x = self
      buff.write(_get_struct_2B().pack(_x.feedback.path.useDirections, _x.feedback.path.reversed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.status is None:
        self.status = actionlib_msgs.msg.GoalStatus()
      if self.feedback is None:
        self.feedback = rns_msgs.msg.MoveToFeedback()
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
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.status.goal_id.stamp.secs, _x.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status.text = str[start:end].decode('utf-8')
      else:
        self.status.text = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.feedback.recalculation, _x.feedback.obstacleIndex, _x.feedback.obstacleDistance, _x.feedback.waypoint, _x.feedback.moverState,) = _get_struct_Bif2i().unpack(str[start:end])
      self.feedback.recalculation = bool(self.feedback.recalculation)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.msg = str[start:end].decode('utf-8')
      else:
        self.feedback.msg = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.feedback.path.header.seq, _x.feedback.path.header.stamp.secs, _x.feedback.path.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.path.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.path.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.feedback.path.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.feedback.path.waypoints = []
      for i in range(0, length):
        val1 = rns_msgs.msg.Waypoint()
        _x = val1
        start = end
        end += 25
        (_x.x, _x.y, _x.angle, _x.maxVelocity, _x.maxDeviation, _x.useDirection, _x.angleDeviation,) = _get_struct_5fBf().unpack(str[start:end])
        val1.useDirection = bool(val1.useDirection)
        self.feedback.path.waypoints.append(val1)
      _x = self
      start = end
      end += 2
      (_x.feedback.path.useDirections, _x.feedback.path.reversed,) = _get_struct_2B().unpack(str[start:end])
      self.feedback.path.useDirections = bool(self.feedback.path.useDirections)
      self.feedback.path.reversed = bool(self.feedback.path.reversed)
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.status.goal_id.stamp.secs, _x.status.goal_id.stamp.nsecs))
      _x = self.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.status.status))
      _x = self.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Bif2i().pack(_x.feedback.recalculation, _x.feedback.obstacleIndex, _x.feedback.obstacleDistance, _x.feedback.waypoint, _x.feedback.moverState))
      _x = self.feedback.msg
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.feedback.path.header.seq, _x.feedback.path.header.stamp.secs, _x.feedback.path.header.stamp.nsecs))
      _x = self.feedback.path.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.feedback.path.id))
      length = len(self.feedback.path.waypoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.feedback.path.waypoints:
        _x = val1
        buff.write(_get_struct_5fBf().pack(_x.x, _x.y, _x.angle, _x.maxVelocity, _x.maxDeviation, _x.useDirection, _x.angleDeviation))
      _x = self
      buff.write(_get_struct_2B().pack(_x.feedback.path.useDirections, _x.feedback.path.reversed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.status is None:
        self.status = actionlib_msgs.msg.GoalStatus()
      if self.feedback is None:
        self.feedback = rns_msgs.msg.MoveToFeedback()
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
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.status.goal_id.stamp.secs, _x.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status.text = str[start:end].decode('utf-8')
      else:
        self.status.text = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.feedback.recalculation, _x.feedback.obstacleIndex, _x.feedback.obstacleDistance, _x.feedback.waypoint, _x.feedback.moverState,) = _get_struct_Bif2i().unpack(str[start:end])
      self.feedback.recalculation = bool(self.feedback.recalculation)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.msg = str[start:end].decode('utf-8')
      else:
        self.feedback.msg = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.feedback.path.header.seq, _x.feedback.path.header.stamp.secs, _x.feedback.path.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.path.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.path.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.feedback.path.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.feedback.path.waypoints = []
      for i in range(0, length):
        val1 = rns_msgs.msg.Waypoint()
        _x = val1
        start = end
        end += 25
        (_x.x, _x.y, _x.angle, _x.maxVelocity, _x.maxDeviation, _x.useDirection, _x.angleDeviation,) = _get_struct_5fBf().unpack(str[start:end])
        val1.useDirection = bool(val1.useDirection)
        self.feedback.path.waypoints.append(val1)
      _x = self
      start = end
      end += 2
      (_x.feedback.path.useDirections, _x.feedback.path.reversed,) = _get_struct_2B().unpack(str[start:end])
      self.feedback.path.useDirections = bool(self.feedback.path.useDirections)
      self.feedback.path.reversed = bool(self.feedback.path.reversed)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
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
_struct_5fBf = None
def _get_struct_5fBf():
    global _struct_5fBf
    if _struct_5fBf is None:
        _struct_5fBf = struct.Struct("<5fBf")
    return _struct_5fBf
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
