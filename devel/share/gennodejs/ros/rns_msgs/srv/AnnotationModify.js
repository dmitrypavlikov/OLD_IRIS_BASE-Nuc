// Auto-generated. Do not edit!

// (in-package rns_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AnnotationUpdate = require('../msg/AnnotationUpdate.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AnnotationModifyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.update = null;
      this.updateByName = null;
    }
    else {
      if (initObj.hasOwnProperty('update')) {
        this.update = initObj.update
      }
      else {
        this.update = new AnnotationUpdate();
      }
      if (initObj.hasOwnProperty('updateByName')) {
        this.updateByName = initObj.updateByName
      }
      else {
        this.updateByName = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnnotationModifyRequest
    // Serialize message field [update]
    bufferOffset = AnnotationUpdate.serialize(obj.update, buffer, bufferOffset);
    // Serialize message field [updateByName]
    bufferOffset = _serializer.bool(obj.updateByName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnnotationModifyRequest
    let len;
    let data = new AnnotationModifyRequest(null);
    // Deserialize message field [update]
    data.update = AnnotationUpdate.deserialize(buffer, bufferOffset);
    // Deserialize message field [updateByName]
    data.updateByName = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AnnotationUpdate.getMessageSize(object.update);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rns_msgs/AnnotationModifyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f49a6a029c8e553e005b0627eeb8ebc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnnotationModifyRequest(null);
    if (msg.update !== undefined) {
      resolved.update = AnnotationUpdate.Resolve(msg.update)
    }
    else {
      resolved.update = new AnnotationUpdate()
    }

    if (msg.updateByName !== undefined) {
      resolved.updateByName = msg.updateByName;
    }
    else {
      resolved.updateByName = false
    }

    return resolved;
    }
};

class AnnotationModifyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.revision = null;
      this.ids = null;
    }
    else {
      if (initObj.hasOwnProperty('revision')) {
        this.revision = initObj.revision
      }
      else {
        this.revision = 0;
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnnotationModifyResponse
    // Serialize message field [revision]
    bufferOffset = _serializer.int64(obj.revision, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int64(obj.ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnnotationModifyResponse
    let len;
    let data = new AnnotationModifyResponse(null);
    // Deserialize message field [revision]
    data.revision = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.ids.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rns_msgs/AnnotationModifyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ff0f9b56752fae8d623e57e163fa654';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int64 revision
    
    
    int64[] ids
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnnotationModifyResponse(null);
    if (msg.revision !== undefined) {
      resolved.revision = msg.revision;
    }
    else {
      resolved.revision = 0
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    return resolved;
    }
};

module.exports = {
  Request: AnnotationModifyRequest,
  Response: AnnotationModifyResponse,
  md5sum() { return 'c1b1dd6347d93bcf8dacf5e4166ca3cc'; },
  datatype() { return 'rns_msgs/AnnotationModify'; }
};
