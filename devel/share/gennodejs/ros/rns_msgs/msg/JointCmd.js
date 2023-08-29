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

class JointCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channel = null;
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCmd
    // Serialize message field [channel]
    bufferOffset = _serializer.int32(obj.channel, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _serializer.float32(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCmd
    let len;
    let data = new JointCmd(null);
    // Deserialize message field [channel]
    data.channel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/JointCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6c6db516e281ccd39d5b21f9184ccaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Joint channel ID
    int32 channel
    
    # Command for channel
    float32 cmd
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCmd(null);
    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0.0
    }

    return resolved;
    }
};

module.exports = JointCmd;
