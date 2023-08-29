// Auto-generated. Do not edit!

// (in-package rns_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapCell = require('./MapCell.js');

//-----------------------------------------------------------

class MapPage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dim = null;
      this.size = null;
      this.x = null;
      this.y = null;
      this.cells = null;
    }
    else {
      if (initObj.hasOwnProperty('dim')) {
        this.dim = initObj.dim
      }
      else {
        this.dim = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
      if (initObj.hasOwnProperty('cells')) {
        this.cells = initObj.cells
      }
      else {
        this.cells = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapPage
    // Serialize message field [dim]
    bufferOffset = _serializer.int32(obj.dim, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.int32(obj.size, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.int32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.int32(obj.y, buffer, bufferOffset);
    // Serialize message field [cells]
    // Serialize the length for message field [cells]
    bufferOffset = _serializer.uint32(obj.cells.length, buffer, bufferOffset);
    obj.cells.forEach((val) => {
      bufferOffset = MapCell.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapPage
    let len;
    let data = new MapPage(null);
    // Deserialize message field [dim]
    data.dim = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cells]
    // Deserialize array length for message field [cells]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cells = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cells[i] = MapCell.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.cells.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/MapPage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1508c2bfcad3c0eba674d73046ed9ca3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 dim					# page dimension, power of 2
    int32 size					# page size in pixels. Likely is equal to 2^dim
    int32 x						# page X position
    int32 y						# page Y position
    rns_msgs/MapCell[] cells		# array of cells
    
    ================================================================================
    MSG: rns_msgs/MapCell
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
    const resolved = new MapPage(null);
    if (msg.dim !== undefined) {
      resolved.dim = msg.dim;
    }
    else {
      resolved.dim = 0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    if (msg.cells !== undefined) {
      resolved.cells = new Array(msg.cells.length);
      for (let i = 0; i < resolved.cells.length; ++i) {
        resolved.cells[i] = MapCell.Resolve(msg.cells[i]);
      }
    }
    else {
      resolved.cells = []
    }

    return resolved;
    }
};

module.exports = MapPage;
