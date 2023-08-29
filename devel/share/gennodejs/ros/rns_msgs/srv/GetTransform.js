// Auto-generated. Do not edit!

// (in-package rns_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetTransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.from = null;
      this.to = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('from')) {
        this.from = initObj.from
      }
      else {
        this.from = '';
      }
      if (initObj.hasOwnProperty('to')) {
        this.to = initObj.to
      }
      else {
        this.to = '';
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTransformRequest
    // Serialize message field [from]
    bufferOffset = _serializer.string(obj.from, buffer, bufferOffset);
    // Serialize message field [to]
    bufferOffset = _serializer.string(obj.to, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformRequest
    let len;
    let data = new GetTransformRequest(null);
    // Deserialize message field [from]
    data.from = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [to]
    data.to = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.from.length;
    length += object.to.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rns_msgs/GetTransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8bdea637ca903963bcacbf96059ea3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string from
    string to
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTransformRequest(null);
    if (msg.from !== undefined) {
      resolved.from = msg.from;
    }
    else {
      resolved.from = ''
    }

    if (msg.to !== undefined) {
      resolved.to = msg.to;
    }
    else {
      resolved.to = ''
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class GetTransformResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTransformResponse
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformResponse
    let len;
    let data = new GetTransformResponse(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rns_msgs/GetTransformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f192399f711a48924df9a394d37edd67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose
    
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
    const resolved = new GetTransformResponse(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTransformRequest,
  Response: GetTransformResponse,
  md5sum() { return 'aad98f5c832994617c9c8eb5f246dcf1'; },
  datatype() { return 'rns_msgs/GetTransform'; }
};
