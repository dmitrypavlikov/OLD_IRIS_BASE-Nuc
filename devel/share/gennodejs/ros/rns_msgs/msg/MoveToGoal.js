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

class MoveToGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.maxDistance = null;
      this.minDistance = null;
      this.oriented = null;
      this.canVisitUnknown = null;
      this.objectID = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('maxDistance')) {
        this.maxDistance = initObj.maxDistance
      }
      else {
        this.maxDistance = 0.0;
      }
      if (initObj.hasOwnProperty('minDistance')) {
        this.minDistance = initObj.minDistance
      }
      else {
        this.minDistance = 0.0;
      }
      if (initObj.hasOwnProperty('oriented')) {
        this.oriented = initObj.oriented
      }
      else {
        this.oriented = false;
      }
      if (initObj.hasOwnProperty('canVisitUnknown')) {
        this.canVisitUnknown = initObj.canVisitUnknown
      }
      else {
        this.canVisitUnknown = false;
      }
      if (initObj.hasOwnProperty('objectID')) {
        this.objectID = initObj.objectID
      }
      else {
        this.objectID = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveToGoal
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [maxDistance]
    bufferOffset = _serializer.float32(obj.maxDistance, buffer, bufferOffset);
    // Serialize message field [minDistance]
    bufferOffset = _serializer.float32(obj.minDistance, buffer, bufferOffset);
    // Serialize message field [oriented]
    bufferOffset = _serializer.bool(obj.oriented, buffer, bufferOffset);
    // Serialize message field [canVisitUnknown]
    bufferOffset = _serializer.bool(obj.canVisitUnknown, buffer, bufferOffset);
    // Serialize message field [objectID]
    bufferOffset = _arraySerializer.int64(obj.objectID, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveToGoal
    let len;
    let data = new MoveToGoal(null);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [maxDistance]
    data.maxDistance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [minDistance]
    data.minDistance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [oriented]
    data.oriented = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [canVisitUnknown]
    data.canVisitUnknown = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [objectID]
    data.objectID = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal);
    length += 8 * object.objectID.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rns_msgs/MoveToGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36135debe145aaf9366fe3f5283833a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Goal
    geometry_msgs/PoseStamped goal
    # Maximum distance for path search
    float32 maxDistance
    # Minimal distance to be reached
    float32 minDistance
    # Set to true if target orientation is necessary
    bool oriented
    # Set to true if search can enter unknown areas
    bool canVisitUnknown
    # ID of object(s) to be followed
    int64[] objectID
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new MoveToGoal(null);
    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.PoseStamped.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.maxDistance !== undefined) {
      resolved.maxDistance = msg.maxDistance;
    }
    else {
      resolved.maxDistance = 0.0
    }

    if (msg.minDistance !== undefined) {
      resolved.minDistance = msg.minDistance;
    }
    else {
      resolved.minDistance = 0.0
    }

    if (msg.oriented !== undefined) {
      resolved.oriented = msg.oriented;
    }
    else {
      resolved.oriented = false
    }

    if (msg.canVisitUnknown !== undefined) {
      resolved.canVisitUnknown = msg.canVisitUnknown;
    }
    else {
      resolved.canVisitUnknown = false
    }

    if (msg.objectID !== undefined) {
      resolved.objectID = msg.objectID;
    }
    else {
      resolved.objectID = []
    }

    return resolved;
    }
};

module.exports = MoveToGoal;