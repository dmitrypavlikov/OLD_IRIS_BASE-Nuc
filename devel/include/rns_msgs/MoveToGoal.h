// Generated by gencpp from file rns_msgs/MoveToGoal.msg
// DO NOT EDIT!


#ifndef RNS_MSGS_MESSAGE_MOVETOGOAL_H
#define RNS_MSGS_MESSAGE_MOVETOGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace rns_msgs
{
template <class ContainerAllocator>
struct MoveToGoal_
{
  typedef MoveToGoal_<ContainerAllocator> Type;

  MoveToGoal_()
    : goal()
    , maxDistance(0.0)
    , minDistance(0.0)
    , oriented(false)
    , canVisitUnknown(false)
    , objectID()  {
    }
  MoveToGoal_(const ContainerAllocator& _alloc)
    : goal(_alloc)
    , maxDistance(0.0)
    , minDistance(0.0)
    , oriented(false)
    , canVisitUnknown(false)
    , objectID(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _goal_type;
  _goal_type goal;

   typedef float _maxDistance_type;
  _maxDistance_type maxDistance;

   typedef float _minDistance_type;
  _minDistance_type minDistance;

   typedef uint8_t _oriented_type;
  _oriented_type oriented;

   typedef uint8_t _canVisitUnknown_type;
  _canVisitUnknown_type canVisitUnknown;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _objectID_type;
  _objectID_type objectID;





  typedef boost::shared_ptr< ::rns_msgs::MoveToGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rns_msgs::MoveToGoal_<ContainerAllocator> const> ConstPtr;

}; // struct MoveToGoal_

typedef ::rns_msgs::MoveToGoal_<std::allocator<void> > MoveToGoal;

typedef boost::shared_ptr< ::rns_msgs::MoveToGoal > MoveToGoalPtr;
typedef boost::shared_ptr< ::rns_msgs::MoveToGoal const> MoveToGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rns_msgs::MoveToGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rns_msgs::MoveToGoal_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rns_msgs::MoveToGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rns_msgs::MoveToGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::MoveToGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::MoveToGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::MoveToGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::MoveToGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rns_msgs::MoveToGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "36135debe145aaf9366fe3f5283833a7";
  }

  static const char* value(const ::rns_msgs::MoveToGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x36135debe145aaf9ULL;
  static const uint64_t static_value2 = 0x366fe3f5283833a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::rns_msgs::MoveToGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rns_msgs/MoveToGoal";
  }

  static const char* value(const ::rns_msgs::MoveToGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rns_msgs::MoveToGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
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
";
  }

  static const char* value(const ::rns_msgs::MoveToGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rns_msgs::MoveToGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
      stream.next(m.maxDistance);
      stream.next(m.minDistance);
      stream.next(m.oriented);
      stream.next(m.canVisitUnknown);
      stream.next(m.objectID);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveToGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rns_msgs::MoveToGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rns_msgs::MoveToGoal_<ContainerAllocator>& v)
  {
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
    s << indent << "maxDistance: ";
    Printer<float>::stream(s, indent + "  ", v.maxDistance);
    s << indent << "minDistance: ";
    Printer<float>::stream(s, indent + "  ", v.minDistance);
    s << indent << "oriented: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.oriented);
    s << indent << "canVisitUnknown: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.canVisitUnknown);
    s << indent << "objectID[]" << std::endl;
    for (size_t i = 0; i < v.objectID.size(); ++i)
    {
      s << indent << "  objectID[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.objectID[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RNS_MSGS_MESSAGE_MOVETOGOAL_H
