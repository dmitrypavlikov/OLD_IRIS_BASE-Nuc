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

class WifiState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ssid = null;
      this.iface = null;
      this.txPower = null;
      this.noise = null;
      this.quality = null;
      this.ping = null;
    }
    else {
      if (initObj.hasOwnProperty('ssid')) {
        this.ssid = initObj.ssid
      }
      else {
        this.ssid = '';
      }
      if (initObj.hasOwnProperty('iface')) {
        this.iface = initObj.iface
      }
      else {
        this.iface = '';
      }
      if (initObj.hasOwnProperty('txPower')) {
        this.txPower = initObj.txPower
      }
      else {
        this.txPower = 0;
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = 0;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
      if (initObj.hasOwnProperty('ping')) {
        this.ping = initObj.ping
      }
      else {
        this.ping = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WifiState
    // Serialize message field [ssid]
    bufferOffset = _serializer.string(obj.ssid, buffer, bufferOffset);
    // Serialize message field [iface]
    bufferOffset = _serializer.string(obj.iface, buffer, bufferOffset);
    // Serialize message field [txPower]
    bufferOffset = _serializer.int16(obj.txPower, buffer, bufferOffset);
    // Serialize message field [noise]
    bufferOffset = _serializer.int16(obj.noise, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.int16(obj.quality, buffer, bufferOffset);
    // Serialize message field [ping]
    bufferOffset = _serializer.int16(obj.ping, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WifiState
    let len;
    let data = new WifiState(null);
    // Deserialize message field [ssid]
    data.ssid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [iface]
    data.iface = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [txPower]
    data.txPower = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [noise]
    data.noise = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ping]
    data.ping = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ssid.length;
    length += object.iface.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/WifiState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd14117bc77c7a4058b700a839b5275da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ssid
    string iface
    int16 txPower
    int16 noise
    int16 quality
    int16 ping
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WifiState(null);
    if (msg.ssid !== undefined) {
      resolved.ssid = msg.ssid;
    }
    else {
      resolved.ssid = ''
    }

    if (msg.iface !== undefined) {
      resolved.iface = msg.iface;
    }
    else {
      resolved.iface = ''
    }

    if (msg.txPower !== undefined) {
      resolved.txPower = msg.txPower;
    }
    else {
      resolved.txPower = 0
    }

    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = 0
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    if (msg.ping !== undefined) {
      resolved.ping = msg.ping;
    }
    else {
      resolved.ping = 0
    }

    return resolved;
    }
};

module.exports = WifiState;
