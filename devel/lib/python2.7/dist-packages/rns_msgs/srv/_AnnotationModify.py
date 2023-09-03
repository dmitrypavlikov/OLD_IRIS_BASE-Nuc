# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rns_msgs/AnnotationModifyRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import rns_msgs.msg
import std_msgs.msg

class AnnotationModifyRequest(genpy.Message):
  _md5sum = "f49a6a029c8e553e005b0627eeb8ebc2"
  _type = "rns_msgs/AnnotationModifyRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
AnnotationUpdate update
bool updateByName

================================================================================
MSG: rns_msgs/AnnotationUpdate
# Message contains annotation update
rns_msgs/Annotation[] annotations

int32 ActionAdd = 1 #;    /// Add new annotations. If they are already exist - they will be modified on server
int32 ActionSet = 2 #;    /// Override whole annotation list
int32 ActionDelete = 3 #; /// Delete annotations that stored in AnnotationsUpdate.annotations array. They are found by their IDs
int32 ActionNotify = 4 #  /// Notify that there are updates for the server

# takes one of aforementioned values
int32 action
# Current server revision
int64 revision
# List of updated identifiers. Actual meaning corresponds to action type
int64[] updated
================================================================================
MSG: rns_msgs/Annotation
# Standard header
std_msgs/Header header
# Annotation ID. It should be unique
int64 id

int32 AnnotationTypePoint = 1 #;    /// Single point
int32 AnnotationTypeLine = 2 #;     /// Polyline
int32 AnnotationTypePoly = 3 #;     /// FilledPolygon

int32 type # one of types described in constants

int64 revision

geometry_msgs/Polygon area
# Central pose
geometry_msgs/PoseWithCovarianceStamped pose
# Annotation size
float32 size
# Annotation name
string name
# Attached tags
string[] tags
# Annotation origin, i.e editor name
string origin
# optional field
string description
# If this area is restricted to move in
bool restricted 
# ID for complete userdata. Can be a database index
int64 userdataID
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
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
"""
  __slots__ = ['update','updateByName']
  _slot_types = ['rns_msgs/AnnotationUpdate','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       update,updateByName

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AnnotationModifyRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.update is None:
        self.update = rns_msgs.msg.AnnotationUpdate()
      if self.updateByName is None:
        self.updateByName = False
    else:
      self.update = rns_msgs.msg.AnnotationUpdate()
      self.updateByName = False

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
      length = len(self.update.annotations)
      buff.write(_struct_I.pack(length))
      for val1 in self.update.annotations:
        _v1 = val1.header
        buff.write(_get_struct_I().pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_qiq().pack(_x.id, _x.type, _x.revision))
        _v3 = val1.area
        length = len(_v3.points)
        buff.write(_struct_I.pack(length))
        for val3 in _v3.points:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        _v4 = val1.pose
        _v5 = _v4.header
        buff.write(_get_struct_I().pack(_v5.seq))
        _v6 = _v5.stamp
        _x = _v6
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v5.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v7 = _v4.pose
        _v8 = _v7.pose
        _v9 = _v8.position
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v10 = _v8.orientation
        _x = _v10
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_get_struct_36d().pack(*_v7.covariance))
        buff.write(_get_struct_f().pack(val1.size))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.tags)
        buff.write(_struct_I.pack(length))
        for val2 in val1.tags:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          buff.write(struct.pack('<I%ss'%length, length, val2))
        _x = val1.origin
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.description
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_Bq().pack(_x.restricted, _x.userdataID))
      _x = self
      buff.write(_get_struct_iq().pack(_x.update.action, _x.update.revision))
      length = len(self.update.updated)
      buff.write(_struct_I.pack(length))
      pattern = '<%sq'%length
      buff.write(struct.pack(pattern, *self.update.updated))
      buff.write(_get_struct_B().pack(self.updateByName))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.update is None:
        self.update = rns_msgs.msg.AnnotationUpdate()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.update.annotations = []
      for i in range(0, length):
        val1 = rns_msgs.msg.Annotation()
        _v11 = val1.header
        start = end
        end += 4
        (_v11.seq,) = _get_struct_I().unpack(str[start:end])
        _v12 = _v11.stamp
        _x = _v12
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v11.frame_id = str[start:end].decode('utf-8')
        else:
          _v11.frame_id = str[start:end]
        _x = val1
        start = end
        end += 20
        (_x.id, _x.type, _x.revision,) = _get_struct_qiq().unpack(str[start:end])
        _v13 = val1.area
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v13.points = []
        for i in range(0, length):
          val3 = geometry_msgs.msg.Point32()
          _x = val3
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          _v13.points.append(val3)
        _v14 = val1.pose
        _v15 = _v14.header
        start = end
        end += 4
        (_v15.seq,) = _get_struct_I().unpack(str[start:end])
        _v16 = _v15.stamp
        _x = _v16
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v15.frame_id = str[start:end].decode('utf-8')
        else:
          _v15.frame_id = str[start:end]
        _v17 = _v14.pose
        _v18 = _v17.pose
        _v19 = _v18.position
        _x = _v19
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v20 = _v18.orientation
        _x = _v20
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 288
        _v17.covariance = _get_struct_36d().unpack(str[start:end])
        start = end
        end += 4
        (val1.size,) = _get_struct_f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.tags = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8')
          else:
            val2 = str[start:end]
          val1.tags.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.origin = str[start:end].decode('utf-8')
        else:
          val1.origin = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.description = str[start:end].decode('utf-8')
        else:
          val1.description = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.restricted, _x.userdataID,) = _get_struct_Bq().unpack(str[start:end])
        val1.restricted = bool(val1.restricted)
        self.update.annotations.append(val1)
      _x = self
      start = end
      end += 12
      (_x.update.action, _x.update.revision,) = _get_struct_iq().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sq'%length
      start = end
      end += struct.calcsize(pattern)
      self.update.updated = struct.unpack(pattern, str[start:end])
      start = end
      end += 1
      (self.updateByName,) = _get_struct_B().unpack(str[start:end])
      self.updateByName = bool(self.updateByName)
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
      length = len(self.update.annotations)
      buff.write(_struct_I.pack(length))
      for val1 in self.update.annotations:
        _v21 = val1.header
        buff.write(_get_struct_I().pack(_v21.seq))
        _v22 = _v21.stamp
        _x = _v22
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v21.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_qiq().pack(_x.id, _x.type, _x.revision))
        _v23 = val1.area
        length = len(_v23.points)
        buff.write(_struct_I.pack(length))
        for val3 in _v23.points:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        _v24 = val1.pose
        _v25 = _v24.header
        buff.write(_get_struct_I().pack(_v25.seq))
        _v26 = _v25.stamp
        _x = _v26
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v25.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v27 = _v24.pose
        _v28 = _v27.pose
        _v29 = _v28.position
        _x = _v29
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v30 = _v28.orientation
        _x = _v30
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_v27.covariance.tostring())
        buff.write(_get_struct_f().pack(val1.size))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.tags)
        buff.write(_struct_I.pack(length))
        for val2 in val1.tags:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          buff.write(struct.pack('<I%ss'%length, length, val2))
        _x = val1.origin
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.description
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_Bq().pack(_x.restricted, _x.userdataID))
      _x = self
      buff.write(_get_struct_iq().pack(_x.update.action, _x.update.revision))
      length = len(self.update.updated)
      buff.write(_struct_I.pack(length))
      pattern = '<%sq'%length
      buff.write(self.update.updated.tostring())
      buff.write(_get_struct_B().pack(self.updateByName))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.update is None:
        self.update = rns_msgs.msg.AnnotationUpdate()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.update.annotations = []
      for i in range(0, length):
        val1 = rns_msgs.msg.Annotation()
        _v31 = val1.header
        start = end
        end += 4
        (_v31.seq,) = _get_struct_I().unpack(str[start:end])
        _v32 = _v31.stamp
        _x = _v32
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v31.frame_id = str[start:end].decode('utf-8')
        else:
          _v31.frame_id = str[start:end]
        _x = val1
        start = end
        end += 20
        (_x.id, _x.type, _x.revision,) = _get_struct_qiq().unpack(str[start:end])
        _v33 = val1.area
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v33.points = []
        for i in range(0, length):
          val3 = geometry_msgs.msg.Point32()
          _x = val3
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          _v33.points.append(val3)
        _v34 = val1.pose
        _v35 = _v34.header
        start = end
        end += 4
        (_v35.seq,) = _get_struct_I().unpack(str[start:end])
        _v36 = _v35.stamp
        _x = _v36
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v35.frame_id = str[start:end].decode('utf-8')
        else:
          _v35.frame_id = str[start:end]
        _v37 = _v34.pose
        _v38 = _v37.pose
        _v39 = _v38.position
        _x = _v39
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v40 = _v38.orientation
        _x = _v40
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 288
        _v37.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
        start = end
        end += 4
        (val1.size,) = _get_struct_f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.tags = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8')
          else:
            val2 = str[start:end]
          val1.tags.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.origin = str[start:end].decode('utf-8')
        else:
          val1.origin = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.description = str[start:end].decode('utf-8')
        else:
          val1.description = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.restricted, _x.userdataID,) = _get_struct_Bq().unpack(str[start:end])
        val1.restricted = bool(val1.restricted)
        self.update.annotations.append(val1)
      _x = self
      start = end
      end += 12
      (_x.update.action, _x.update.revision,) = _get_struct_iq().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sq'%length
      start = end
      end += struct.calcsize(pattern)
      self.update.updated = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=length)
      start = end
      end += 1
      (self.updateByName,) = _get_struct_B().unpack(str[start:end])
      self.updateByName = bool(self.updateByName)
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
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
_struct_36d = None
def _get_struct_36d():
    global _struct_36d
    if _struct_36d is None:
        _struct_36d = struct.Struct("<36d")
    return _struct_36d
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_iq = None
def _get_struct_iq():
    global _struct_iq
    if _struct_iq is None:
        _struct_iq = struct.Struct("<iq")
    return _struct_iq
_struct_Bq = None
def _get_struct_Bq():
    global _struct_Bq
    if _struct_Bq is None:
        _struct_Bq = struct.Struct("<Bq")
    return _struct_Bq
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_qiq = None
def _get_struct_qiq():
    global _struct_qiq
    if _struct_qiq is None:
        _struct_qiq = struct.Struct("<qiq")
    return _struct_qiq
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rns_msgs/AnnotationModifyResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AnnotationModifyResponse(genpy.Message):
  _md5sum = "7ff0f9b56752fae8d623e57e163fa654"
  _type = "rns_msgs/AnnotationModifyResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
int64 revision


int64[] ids

"""
  __slots__ = ['revision','ids']
  _slot_types = ['int64','int64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       revision,ids

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AnnotationModifyResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.revision is None:
        self.revision = 0
      if self.ids is None:
        self.ids = []
    else:
      self.revision = 0
      self.ids = []

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
      buff.write(_get_struct_q().pack(self.revision))
      length = len(self.ids)
      buff.write(_struct_I.pack(length))
      pattern = '<%sq'%length
      buff.write(struct.pack(pattern, *self.ids))
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
      end += 8
      (self.revision,) = _get_struct_q().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sq'%length
      start = end
      end += struct.calcsize(pattern)
      self.ids = struct.unpack(pattern, str[start:end])
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
      buff.write(_get_struct_q().pack(self.revision))
      length = len(self.ids)
      buff.write(_struct_I.pack(length))
      pattern = '<%sq'%length
      buff.write(self.ids.tostring())
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
      end += 8
      (self.revision,) = _get_struct_q().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sq'%length
      start = end
      end += struct.calcsize(pattern)
      self.ids = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_q = None
def _get_struct_q():
    global _struct_q
    if _struct_q is None:
        _struct_q = struct.Struct("<q")
    return _struct_q
class AnnotationModify(object):
  _type          = 'rns_msgs/AnnotationModify'
  _md5sum = 'c1b1dd6347d93bcf8dacf5e4166ca3cc'
  _request_class  = AnnotationModifyRequest
  _response_class = AnnotationModifyResponse