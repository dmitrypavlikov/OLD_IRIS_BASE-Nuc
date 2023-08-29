// Auto-generated. Do not edit!

// (in-package rns_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Waypoint = require('./Waypoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AnnotatedPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.waypoints = null;
      this.useDirections = null;
      this.reversed = null;
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
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
      if (initObj.hasOwnProperty('useDirections')) {
        this.useDirections = initObj.useDirections
      }
      else {
        this.useDirections = false;
      }
      if (initObj.hasOwnProperty('reversed')) {
        this.reversed = initObj.reversed
      }
      else {
        this.reversed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnnotatedPath
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = Waypoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [useDirections]
    bufferOffset = _serializer.bool(obj.useDirections, buffer, bufferOffset);
    // Serialize message field [reversed]
    bufferOffset = _serializer.bool(obj.reversed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnnotatedPath
    let len;
    let data = new AnnotatedPath(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = Waypoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [useDirections]
    data.useDirections = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reversed]
    data.reversed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 25 * object.waypoints.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/AnnotatedPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b1eef100fbebb30331ce40cce8f2f13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    float32 angleDeviation
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnnotatedPath(null);
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

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = Waypoint.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    if (msg.useDirections !== undefined) {
      resolved.useDirections = msg.useDirections;
    }
    else {
      resolved.useDirections = false
    }

    if (msg.reversed !== undefined) {
      resolved.reversed = msg.reversed;
    }
    else {
      resolved.reversed = false
    }

    return resolved;
    }
};

module.exports = AnnotatedPath;
