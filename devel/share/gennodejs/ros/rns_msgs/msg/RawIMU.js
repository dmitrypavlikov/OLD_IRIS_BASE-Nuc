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

class RawIMU {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.acc = null;
      this.gyro = null;
      this.mag = null;
      this.acc_max = null;
      this.gyro_max = null;
      this.mag_max = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('mag')) {
        this.mag = initObj.mag
      }
      else {
        this.mag = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acc_max')) {
        this.acc_max = initObj.acc_max
      }
      else {
        this.acc_max = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_max')) {
        this.gyro_max = initObj.gyro_max
      }
      else {
        this.gyro_max = 0.0;
      }
      if (initObj.hasOwnProperty('mag_max')) {
        this.mag_max = initObj.mag_max
      }
      else {
        this.mag_max = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawIMU
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acc, buffer, bufferOffset);
    // Serialize message field [gyro]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gyro, buffer, bufferOffset);
    // Serialize message field [mag]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.mag, buffer, bufferOffset);
    // Serialize message field [acc_max]
    bufferOffset = _serializer.float64(obj.acc_max, buffer, bufferOffset);
    // Serialize message field [gyro_max]
    bufferOffset = _serializer.float64(obj.gyro_max, buffer, bufferOffset);
    // Serialize message field [mag_max]
    bufferOffset = _serializer.float64(obj.mag_max, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float64(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawIMU
    let len;
    let data = new RawIMU(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyro]
    data.gyro = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [mag]
    data.mag = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_max]
    data.acc_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gyro_max]
    data.gyro_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mag_max]
    data.mag_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/RawIMU';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c87fe4b60e5265c9c047d884383a8459';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    geometry_msgs/Vector3 acc
    geometry_msgs/Vector3 gyro
    geometry_msgs/Vector3 mag
    
    # Max values for acc/gyro/mag
    float64 acc_max
    float64 gyro_max
    float64 mag_max
    
    # Temperature
    float64 temperature
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RawIMU(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.acc !== undefined) {
      resolved.acc = geometry_msgs.msg.Vector3.Resolve(msg.acc)
    }
    else {
      resolved.acc = new geometry_msgs.msg.Vector3()
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = geometry_msgs.msg.Vector3.Resolve(msg.gyro)
    }
    else {
      resolved.gyro = new geometry_msgs.msg.Vector3()
    }

    if (msg.mag !== undefined) {
      resolved.mag = geometry_msgs.msg.Vector3.Resolve(msg.mag)
    }
    else {
      resolved.mag = new geometry_msgs.msg.Vector3()
    }

    if (msg.acc_max !== undefined) {
      resolved.acc_max = msg.acc_max;
    }
    else {
      resolved.acc_max = 0.0
    }

    if (msg.gyro_max !== undefined) {
      resolved.gyro_max = msg.gyro_max;
    }
    else {
      resolved.gyro_max = 0.0
    }

    if (msg.mag_max !== undefined) {
      resolved.mag_max = msg.mag_max;
    }
    else {
      resolved.mag_max = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    return resolved;
    }
};

module.exports = RawIMU;
