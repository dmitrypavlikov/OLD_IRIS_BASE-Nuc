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

class JointConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channel = null;
      this.P = null;
      this.I = null;
      this.D = null;
      this.rate = null;
      this.max_velocity = null;
      this.lower_bound = null;
      this.upper_bound = null;
      this.limit_position = null;
    }
    else {
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('P')) {
        this.P = initObj.P
      }
      else {
        this.P = 0.0;
      }
      if (initObj.hasOwnProperty('I')) {
        this.I = initObj.I
      }
      else {
        this.I = 0.0;
      }
      if (initObj.hasOwnProperty('D')) {
        this.D = initObj.D
      }
      else {
        this.D = 0.0;
      }
      if (initObj.hasOwnProperty('rate')) {
        this.rate = initObj.rate
      }
      else {
        this.rate = 0.0;
      }
      if (initObj.hasOwnProperty('max_velocity')) {
        this.max_velocity = initObj.max_velocity
      }
      else {
        this.max_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('lower_bound')) {
        this.lower_bound = initObj.lower_bound
      }
      else {
        this.lower_bound = 0.0;
      }
      if (initObj.hasOwnProperty('upper_bound')) {
        this.upper_bound = initObj.upper_bound
      }
      else {
        this.upper_bound = 0.0;
      }
      if (initObj.hasOwnProperty('limit_position')) {
        this.limit_position = initObj.limit_position
      }
      else {
        this.limit_position = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointConfig
    // Serialize message field [channel]
    bufferOffset = _serializer.int32(obj.channel, buffer, bufferOffset);
    // Serialize message field [P]
    bufferOffset = _serializer.float32(obj.P, buffer, bufferOffset);
    // Serialize message field [I]
    bufferOffset = _serializer.float32(obj.I, buffer, bufferOffset);
    // Serialize message field [D]
    bufferOffset = _serializer.float32(obj.D, buffer, bufferOffset);
    // Serialize message field [rate]
    bufferOffset = _serializer.float32(obj.rate, buffer, bufferOffset);
    // Serialize message field [max_velocity]
    bufferOffset = _serializer.float32(obj.max_velocity, buffer, bufferOffset);
    // Serialize message field [lower_bound]
    bufferOffset = _serializer.float32(obj.lower_bound, buffer, bufferOffset);
    // Serialize message field [upper_bound]
    bufferOffset = _serializer.float32(obj.upper_bound, buffer, bufferOffset);
    // Serialize message field [limit_position]
    bufferOffset = _serializer.bool(obj.limit_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointConfig
    let len;
    let data = new JointConfig(null);
    // Deserialize message field [channel]
    data.channel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [P]
    data.P = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [I]
    data.I = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [D]
    data.D = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rate]
    data.rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_velocity]
    data.max_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lower_bound]
    data.lower_bound = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [upper_bound]
    data.upper_bound = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [limit_position]
    data.limit_position = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/JointConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf64d7b2610d4202b59257f17a594cb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message describes joint parameterss
    
    # Joint channel ID
    int32 channel
    # Regulator parameters
    float32 P
    float32 I
    float32 D
    float32 rate
    
    # Joint limits
    float32 max_velocity
    float32 lower_bound
    float32 upper_bound
    bool limit_position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointConfig(null);
    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.P !== undefined) {
      resolved.P = msg.P;
    }
    else {
      resolved.P = 0.0
    }

    if (msg.I !== undefined) {
      resolved.I = msg.I;
    }
    else {
      resolved.I = 0.0
    }

    if (msg.D !== undefined) {
      resolved.D = msg.D;
    }
    else {
      resolved.D = 0.0
    }

    if (msg.rate !== undefined) {
      resolved.rate = msg.rate;
    }
    else {
      resolved.rate = 0.0
    }

    if (msg.max_velocity !== undefined) {
      resolved.max_velocity = msg.max_velocity;
    }
    else {
      resolved.max_velocity = 0.0
    }

    if (msg.lower_bound !== undefined) {
      resolved.lower_bound = msg.lower_bound;
    }
    else {
      resolved.lower_bound = 0.0
    }

    if (msg.upper_bound !== undefined) {
      resolved.upper_bound = msg.upper_bound;
    }
    else {
      resolved.upper_bound = 0.0
    }

    if (msg.limit_position !== undefined) {
      resolved.limit_position = msg.limit_position;
    }
    else {
      resolved.limit_position = false
    }

    return resolved;
    }
};

module.exports = JointConfig;
