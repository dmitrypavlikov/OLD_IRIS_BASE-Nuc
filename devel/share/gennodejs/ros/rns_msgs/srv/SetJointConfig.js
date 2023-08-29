// Auto-generated. Do not edit!

// (in-package rns_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointConfig = require('../msg/JointConfig.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetJointConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.config = null;
    }
    else {
      if (initObj.hasOwnProperty('config')) {
        this.config = initObj.config
      }
      else {
        this.config = new JointConfig();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointConfigRequest
    // Serialize message field [config]
    bufferOffset = JointConfig.serialize(obj.config, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointConfigRequest
    let len;
    let data = new SetJointConfigRequest(null);
    // Deserialize message field [config]
    data.config = JointConfig.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rns_msgs/SetJointConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aefdfb811a21f3ae00627bc0f548209c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    JointConfig config
    
    ================================================================================
    MSG: rns_msgs/JointConfig
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
    const resolved = new SetJointConfigRequest(null);
    if (msg.config !== undefined) {
      resolved.config = JointConfig.Resolve(msg.config)
    }
    else {
      resolved.config = new JointConfig()
    }

    return resolved;
    }
};

class SetJointConfigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointConfigResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointConfigResponse
    let len;
    let data = new SetJointConfigResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rns_msgs/SetJointConfigResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointConfigResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetJointConfigRequest,
  Response: SetJointConfigResponse,
  md5sum() { return '1c6291a4c108d62355e9249140ae293c'; },
  datatype() { return 'rns_msgs/SetJointConfig'; }
};
