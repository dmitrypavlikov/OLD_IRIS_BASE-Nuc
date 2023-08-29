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

//-----------------------------------------------------------

class MapInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width = null;
      this.height = null;
      this.resolution = null;
      this.pageSize = null;
      this.pageDim = null;
      this.numPages = null;
      this.origin = null;
    }
    else {
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
      if (initObj.hasOwnProperty('pageSize')) {
        this.pageSize = initObj.pageSize
      }
      else {
        this.pageSize = 0;
      }
      if (initObj.hasOwnProperty('pageDim')) {
        this.pageDim = initObj.pageDim
      }
      else {
        this.pageDim = 0;
      }
      if (initObj.hasOwnProperty('numPages')) {
        this.numPages = initObj.numPages
      }
      else {
        this.numPages = 0;
      }
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapInfo
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float32(obj.resolution, buffer, bufferOffset);
    // Serialize message field [pageSize]
    bufferOffset = _serializer.int32(obj.pageSize, buffer, bufferOffset);
    // Serialize message field [pageDim]
    bufferOffset = _serializer.int32(obj.pageDim, buffer, bufferOffset);
    // Serialize message field [numPages]
    bufferOffset = _serializer.int32(obj.numPages, buffer, bufferOffset);
    // Serialize message field [origin]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.origin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapInfo
    let len;
    let data = new MapInfo(null);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pageSize]
    data.pageSize = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pageDim]
    data.pageDim = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [numPages]
    data.numPages = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [origin]
    data.origin = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/MapInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ca1e2dacff85026a9d6a7c51b48827f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 width				# Total size in pixels
    int32 height			# Total size in pixels
    float32 resolution		# Map resolution
    int32 pageSize			# Size for every page
    int32 pageDim			# Dimension for every page
    int32 numPages			# current number of allocated pages
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
    
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
    const resolved = new MapInfo(null);
    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    if (msg.pageSize !== undefined) {
      resolved.pageSize = msg.pageSize;
    }
    else {
      resolved.pageSize = 0
    }

    if (msg.pageDim !== undefined) {
      resolved.pageDim = msg.pageDim;
    }
    else {
      resolved.pageDim = 0
    }

    if (msg.numPages !== undefined) {
      resolved.numPages = msg.numPages;
    }
    else {
      resolved.numPages = 0
    }

    if (msg.origin !== undefined) {
      resolved.origin = geometry_msgs.msg.Pose.Resolve(msg.origin)
    }
    else {
      resolved.origin = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = MapInfo;
