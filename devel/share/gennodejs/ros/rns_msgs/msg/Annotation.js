// Auto-generated. Do not edit!

// (in-package rns_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Annotation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.type = null;
      this.revision = null;
      this.area = null;
      this.pose = null;
      this.size = null;
      this.name = null;
      this.tags = null;
      this.origin = null;
      this.description = null;
      this.restricted = null;
      this.userdataID = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('revision')) {
        this.revision = initObj.revision
      }
      else {
        this.revision = 0;
      }
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovarianceStamped();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0.0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('restricted')) {
        this.restricted = initObj.restricted
      }
      else {
        this.restricted = false;
      }
      if (initObj.hasOwnProperty('userdataID')) {
        this.userdataID = initObj.userdataID
      }
      else {
        this.userdataID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Annotation
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [revision]
    bufferOffset = _serializer.int64(obj.revision, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.area, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovarianceStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.float32(obj.size, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    // Serialize message field [origin]
    bufferOffset = _serializer.string(obj.origin, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [restricted]
    bufferOffset = _serializer.bool(obj.restricted, buffer, bufferOffset);
    // Serialize message field [userdataID]
    bufferOffset = _serializer.int64(obj.userdataID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Annotation
    let len;
    let data = new Annotation(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [revision]
    data.revision = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovarianceStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [origin]
    data.origin = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [restricted]
    data.restricted = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [userdataID]
    data.userdataID = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += geometry_msgs.msg.Polygon.getMessageSize(object.area);
    length += geometry_msgs.msg.PoseWithCovarianceStamped.getMessageSize(object.pose);
    length += object.name.length;
    object.tags.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.origin.length;
    length += object.description.length;
    return length + 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/Annotation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '768cdd2486d1c0fc2ffd237521ff906f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Annotation(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.revision !== undefined) {
      resolved.revision = msg.revision;
    }
    else {
      resolved.revision = 0
    }

    if (msg.area !== undefined) {
      resolved.area = geometry_msgs.msg.Polygon.Resolve(msg.area)
    }
    else {
      resolved.area = new geometry_msgs.msg.Polygon()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovarianceStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovarianceStamped()
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0.0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    if (msg.origin !== undefined) {
      resolved.origin = msg.origin;
    }
    else {
      resolved.origin = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.restricted !== undefined) {
      resolved.restricted = msg.restricted;
    }
    else {
      resolved.restricted = false
    }

    if (msg.userdataID !== undefined) {
      resolved.userdataID = msg.userdataID;
    }
    else {
      resolved.userdataID = 0
    }

    return resolved;
    }
};

// Constants for message
Annotation.Constants = {
  ANNOTATIONTYPEPOINT: 1,
  ANNOTATIONTYPELINE: 2,
  ANNOTATIONTYPEPOLY: 3,
}

module.exports = Annotation;
