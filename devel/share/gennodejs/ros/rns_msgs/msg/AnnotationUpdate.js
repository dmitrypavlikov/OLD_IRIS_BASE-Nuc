// Auto-generated. Do not edit!

// (in-package rns_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Annotation = require('./Annotation.js');

//-----------------------------------------------------------

class AnnotationUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.annotations = null;
      this.action = null;
      this.revision = null;
      this.updated = null;
    }
    else {
      if (initObj.hasOwnProperty('annotations')) {
        this.annotations = initObj.annotations
      }
      else {
        this.annotations = [];
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('revision')) {
        this.revision = initObj.revision
      }
      else {
        this.revision = 0;
      }
      if (initObj.hasOwnProperty('updated')) {
        this.updated = initObj.updated
      }
      else {
        this.updated = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnnotationUpdate
    // Serialize message field [annotations]
    // Serialize the length for message field [annotations]
    bufferOffset = _serializer.uint32(obj.annotations.length, buffer, bufferOffset);
    obj.annotations.forEach((val) => {
      bufferOffset = Annotation.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [revision]
    bufferOffset = _serializer.int64(obj.revision, buffer, bufferOffset);
    // Serialize message field [updated]
    bufferOffset = _arraySerializer.int64(obj.updated, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnnotationUpdate
    let len;
    let data = new AnnotationUpdate(null);
    // Deserialize message field [annotations]
    // Deserialize array length for message field [annotations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.annotations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.annotations[i] = Annotation.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [revision]
    data.revision = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [updated]
    data.updated = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.annotations.forEach((val) => {
      length += Annotation.getMessageSize(val);
    });
    length += 8 * object.updated.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/AnnotationUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80f10fdd382829c5ed2b38f9c244c413';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnnotationUpdate(null);
    if (msg.annotations !== undefined) {
      resolved.annotations = new Array(msg.annotations.length);
      for (let i = 0; i < resolved.annotations.length; ++i) {
        resolved.annotations[i] = Annotation.Resolve(msg.annotations[i]);
      }
    }
    else {
      resolved.annotations = []
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.revision !== undefined) {
      resolved.revision = msg.revision;
    }
    else {
      resolved.revision = 0
    }

    if (msg.updated !== undefined) {
      resolved.updated = msg.updated;
    }
    else {
      resolved.updated = []
    }

    return resolved;
    }
};

// Constants for message
AnnotationUpdate.Constants = {
  ACTIONADD: 1,
  ACTIONSET: 2,
  ACTIONDELETE: 3,
  ACTIONNOTIFY: 4,
}

module.exports = AnnotationUpdate;
