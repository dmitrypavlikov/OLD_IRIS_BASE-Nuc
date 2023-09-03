// Generated by gencpp from file rns_msgs/MoveToAction.msg
// DO NOT EDIT!


#ifndef RNS_MSGS_MESSAGE_MOVETOACTION_H
#define RNS_MSGS_MESSAGE_MOVETOACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rns_msgs/MoveToActionGoal.h>
#include <rns_msgs/MoveToActionResult.h>
#include <rns_msgs/MoveToActionFeedback.h>

namespace rns_msgs
{
template <class ContainerAllocator>
struct MoveToAction_
{
  typedef MoveToAction_<ContainerAllocator> Type;

  MoveToAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  MoveToAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::rns_msgs::MoveToActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::rns_msgs::MoveToActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::rns_msgs::MoveToActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::rns_msgs::MoveToAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rns_msgs::MoveToAction_<ContainerAllocator> const> ConstPtr;

}; // struct MoveToAction_

typedef ::rns_msgs::MoveToAction_<std::allocator<void> > MoveToAction;

typedef boost::shared_ptr< ::rns_msgs::MoveToAction > MoveToActionPtr;
typedef boost::shared_ptr< ::rns_msgs::MoveToAction const> MoveToActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rns_msgs::MoveToAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rns_msgs::MoveToAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rns_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'rns_msgs': ['/home/joji/iris_ws/src/rns_msgs/msg', '/home/joji/iris_ws/devel/share/rns_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rns_msgs::MoveToAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rns_msgs::MoveToAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::MoveToAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::MoveToAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::MoveToAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::MoveToAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rns_msgs::MoveToAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6836f6034d8efdf47971eee8dffb65d";
  }

  static const char* value(const ::rns_msgs::MoveToAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6836f6034d8efdfULL;
  static const uint64_t static_value2 = 0x47971eee8dffb65dULL;
};

template<class ContainerAllocator>
struct DataType< ::rns_msgs::MoveToAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rns_msgs/MoveToAction";
  }

  static const char* value(const ::rns_msgs::MoveToAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rns_msgs::MoveToAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
MoveToActionGoal action_goal\n\
MoveToActionResult action_result\n\
MoveToActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: rns_msgs/MoveToActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
MoveToGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: rns_msgs/MoveToGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Goal\n\
geometry_msgs/PoseStamped goal\n\
# Maximum distance for path search\n\
float32 maxDistance\n\
# Minimal distance to be reached\n\
float32 minDistance\n\
# Set to true if target orientation is necessary\n\
bool oriented\n\
# Set to true if search can enter unknown areas\n\
bool canVisitUnknown\n\
# ID of object(s) to be followed\n\
int64[] objectID\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: rns_msgs/MoveToActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
MoveToResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: rns_msgs/MoveToResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Result\n\
# Arrival error\n\
float32 distanceError\n\
# If task is complete successfully\n\
bool complete\n\
\n\
================================================================================\n\
MSG: rns_msgs/MoveToActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
MoveToFeedback feedback\n\
\n\
================================================================================\n\
MSG: rns_msgs/MoveToFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Progress\n\
bool recalculation\n\
int32 obstacleIndex\n\
float32 obstacleDistance\n\
# Current waypoint, if there is a waypoint path\n\
int32 waypoint\n\
# Mover state\n\
int32 moverState\n\
# Message for status update\n\
string msg\n\
# Current path\n\
rns_msgs/AnnotatedPath path\n\
\n\
================================================================================\n\
MSG: rns_msgs/AnnotatedPath\n\
std_msgs/Header header\n\
\n\
# Path request id. \n\
int32 id\n\
# Actual path\n\
rns_msgs/Waypoint[] waypoints\n\
# Should mover take care of waypoint directions\n\
bool useDirections\n\
# If path is reversed\n\
bool reversed\n\
================================================================================\n\
MSG: rns_msgs/Waypoint\n\
# Desired position\n\
float32 x\n\
float32 y\n\
# desired direction, in radians\n\
float32 angle\n\
# Max velocity for this waypoint, -1 if no limits\n\
float32 maxVelocity\n\
# Max deviation from this waypoint\n\
float32 maxDeviation\n\
# If target position is relevant\n\
bool useDirection\n\
# Max angle deviation\n\
float32 angleDeviation\n\
";
  }

  static const char* value(const ::rns_msgs::MoveToAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rns_msgs::MoveToAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveToAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rns_msgs::MoveToAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rns_msgs::MoveToAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::rns_msgs::MoveToActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::rns_msgs::MoveToActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::rns_msgs::MoveToActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RNS_MSGS_MESSAGE_MOVETOACTION_H