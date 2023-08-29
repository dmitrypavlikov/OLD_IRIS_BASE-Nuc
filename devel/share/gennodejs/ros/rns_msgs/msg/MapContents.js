// Auto-generated. Do not edit!

// (in-package rns_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapInfo = require('./MapInfo.js');
let MapPage = require('./MapPage.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MapContents {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.info = null;
      this.pages = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new MapInfo();
      }
      if (initObj.hasOwnProperty('pages')) {
        this.pages = initObj.pages
      }
      else {
        this.pages = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapContents
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = MapInfo.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [pages]
    // Serialize the length for message field [pages]
    bufferOffset = _serializer.uint32(obj.pages.length, buffer, bufferOffset);
    obj.pages.forEach((val) => {
      bufferOffset = MapPage.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapContents
    let len;
    let data = new MapContents(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = MapInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [pages]
    // Deserialize array length for message field [pages]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pages = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pages[i] = MapPage.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.pages.forEach((val) => {
      length += MapPage.getMessageSize(val);
    });
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/MapContents';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7df6b4424f17cea740a310413f98541b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    rns_msgs/MapInfo info
    rns_msgs/MapPage[] pages	# Array of pages, not sorted at all
    
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
    MSG: rns_msgs/MapInfo
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
    
    ================================================================================
    MSG: rns_msgs/MapPage
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
    const resolved = new MapContents(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.info !== undefined) {
      resolved.info = MapInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new MapInfo()
    }

    if (msg.pages !== undefined) {
      resolved.pages = new Array(msg.pages.length);
      for (let i = 0; i < resolved.pages.length; ++i) {
        resolved.pages[i] = MapPage.Resolve(msg.pages[i]);
      }
    }
    else {
      resolved.pages = []
    }

    return resolved;
    }
};

module.exports = MapContents;
