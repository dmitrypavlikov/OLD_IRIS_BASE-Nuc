// Auto-generated. Do not edit!

// (in-package rns_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapContents = require('../msg/MapContents.js');

//-----------------------------------------------------------

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class SetMapRequest {
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
    // Serializes a message object of type SetMapRequest
    // Serialize message field [data]
    bufferOffset = MapContents.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMapRequest
    let len;
    let data = new SetMapRequest(null);
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
    return 'rns_msgs/SetMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b81e9a6831ea1bbddfe4258c942c217';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    rns_msgs/MapContents data
    
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
    const resolved = new SetMapRequest(null);
    if (msg.data !== undefined) {
      resolved.data = MapContents.Resolve(msg.data)
    }
    else {
      resolved.data = new MapContents()
    }

    return resolved;
    }
};

class SetMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new nav_msgs.msg.OccupancyGrid();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMapResponse
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [map]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMapResponse
    let len;
    let data = new SetMapResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [map]
    data.map = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.map);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rns_msgs/SetMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c1287ceb391223fa0379d36cb7dc01e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 state
    nav_msgs/OccupancyGrid map
    
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
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
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
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
    const resolved = new SetMapResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.map !== undefined) {
      resolved.map = nav_msgs.msg.OccupancyGrid.Resolve(msg.map)
    }
    else {
      resolved.map = new nav_msgs.msg.OccupancyGrid()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetMapRequest,
  Response: SetMapResponse,
  md5sum() { return 'a0cab6c54454c8c7895007ac34c24aff'; },
  datatype() { return 'rns_msgs/SetMap'; }
};
