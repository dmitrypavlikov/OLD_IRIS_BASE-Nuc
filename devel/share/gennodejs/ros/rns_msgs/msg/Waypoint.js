// Auto-generated. Do not edit!

// (in-package rns_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.angle = null;
      this.maxVelocity = null;
      this.maxDeviation = null;
      this.useDirection = null;
      this.angleDeviation = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('maxVelocity')) {
        this.maxVelocity = initObj.maxVelocity
      }
      else {
        this.maxVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('maxDeviation')) {
        this.maxDeviation = initObj.maxDeviation
      }
      else {
        this.maxDeviation = 0.0;
      }
      if (initObj.hasOwnProperty('useDirection')) {
        this.useDirection = initObj.useDirection
      }
      else {
        this.useDirection = false;
      }
      if (initObj.hasOwnProperty('angleDeviation')) {
        this.angleDeviation = initObj.angleDeviation
      }
      else {
        this.angleDeviation = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [maxVelocity]
    bufferOffset = _serializer.float32(obj.maxVelocity, buffer, bufferOffset);
    // Serialize message field [maxDeviation]
    bufferOffset = _serializer.float32(obj.maxDeviation, buffer, bufferOffset);
    // Serialize message field [useDirection]
    bufferOffset = _serializer.bool(obj.useDirection, buffer, bufferOffset);
    // Serialize message field [angleDeviation]
    bufferOffset = _serializer.float32(obj.angleDeviation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxVelocity]
    data.maxVelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxDeviation]
    data.maxDeviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [useDirection]
    data.useDirection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [angleDeviation]
    data.angleDeviation = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4998af0a465e0ce8aaa982a23f3dcffe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Waypoint(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.maxVelocity !== undefined) {
      resolved.maxVelocity = msg.maxVelocity;
    }
    else {
      resolved.maxVelocity = 0.0
    }

    if (msg.maxDeviation !== undefined) {
      resolved.maxDeviation = msg.maxDeviation;
    }
    else {
      resolved.maxDeviation = 0.0
    }

    if (msg.useDirection !== undefined) {
      resolved.useDirection = msg.useDirection;
    }
    else {
      resolved.useDirection = false
    }

    if (msg.angleDeviation !== undefined) {
      resolved.angleDeviation = msg.angleDeviation;
    }
    else {
      resolved.angleDeviation = 0.0
    }

    return resolved;
    }
};

module.exports = Waypoint;
