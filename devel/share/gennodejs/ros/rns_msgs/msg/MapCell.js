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

class MapCell {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ax = null;
      this.ay = null;
      this.n = null;
      this.visits = null;
      this.distance = null;
      this.weight = null;
    }
    else {
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('n')) {
        this.n = initObj.n
      }
      else {
        this.n = 0;
      }
      if (initObj.hasOwnProperty('visits')) {
        this.visits = initObj.visits
      }
      else {
        this.visits = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapCell
    // Serialize message field [ax]
    bufferOffset = _serializer.float32(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float32(obj.ay, buffer, bufferOffset);
    // Serialize message field [n]
    bufferOffset = _serializer.int32(obj.n, buffer, bufferOffset);
    // Serialize message field [visits]
    bufferOffset = _serializer.int32(obj.visits, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float32(obj.weight, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapCell
    let len;
    let data = new MapCell(null);
    // Deserialize message field [ax]
    data.ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [n]
    data.n = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [visits]
    data.visits = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/MapCell';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62ee396d75bc8a98307908aecc949abe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ax			# accumulated wall X position
    float32 ay			# accumulated wall Y position
    int32 n				# number of wall occurences
    int32 visits		# total number of visits 
    float32 distance	# array for SDF distance
    float32 weight		# array for SDF weight
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapCell(null);
    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.n !== undefined) {
      resolved.n = msg.n;
    }
    else {
      resolved.n = 0
    }

    if (msg.visits !== undefined) {
      resolved.visits = msg.visits;
    }
    else {
      resolved.visits = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    return resolved;
    }
};

module.exports = MapCell;
