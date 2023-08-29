// Auto-generated. Do not edit!

// (in-package rns_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MapContents = require('../msg/MapContents.js');

//-----------------------------------------------------------

class GetMapContentsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapContentsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapContentsRequest
    let len;
    let data = new GetMapContentsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rns_msgs/GetMapContentsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapContentsRequest(null);
    return resolved;
    }
};

class GetMapContentsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new MapContents();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapContentsResponse
    // Serialize message field [data]
    bufferOffset = MapContents.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapContentsResponse
    let len;
    let data = new GetMapContentsResponse(null);
    // Deserialize message field [data]
    data.data = MapContents.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MapContents.getMessageSize(object.data);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rns_msgs/GetMapContentsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b81e9a6831ea1bbddfe4258c942c217';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MapContents data
    
    ================================================================================
    MSG: rns_msgs/MapContents
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
    const resolved = new GetMapContentsResponse(null);
    if (msg.data !== undefined) {
      resolved.data = MapContents.Resolve(msg.data)
    }
    else {
      resolved.data = new MapContents()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMapContentsRequest,
  Response: GetMapContentsResponse,
  md5sum() { return '1b81e9a6831ea1bbddfe4258c942c217'; },
  datatype() { return 'rns_msgs/GetMapContents'; }
};
