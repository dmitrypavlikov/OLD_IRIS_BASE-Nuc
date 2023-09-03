// Generated by gencpp from file rns_msgs/SetMapResponse.msg
// DO NOT EDIT!


#ifndef RNS_MSGS_MESSAGE_SETMAPRESPONSE_H
#define RNS_MSGS_MESSAGE_SETMAPRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/OccupancyGrid.h>

namespace rns_msgs
{
template <class ContainerAllocator>
struct SetMapResponse_
{
  typedef SetMapResponse_<ContainerAllocator> Type;

  SetMapResponse_()
    : state(0)
    , map()  {
    }
  SetMapResponse_(const ContainerAllocator& _alloc)
    : state(0)
    , map(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _state_type;
  _state_type state;

   typedef  ::nav_msgs::OccupancyGrid_<ContainerAllocator>  _map_type;
  _map_type map;





  typedef boost::shared_ptr< ::rns_msgs::SetMapResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rns_msgs::SetMapResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetMapResponse_

typedef ::rns_msgs::SetMapResponse_<std::allocator<void> > SetMapResponse;

typedef boost::shared_ptr< ::rns_msgs::SetMapResponse > SetMapResponsePtr;
typedef boost::shared_ptr< ::rns_msgs::SetMapResponse const> SetMapResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rns_msgs::SetMapResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rns_msgs::SetMapResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rns_msgs::SetMapResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rns_msgs::SetMapResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::SetMapResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::SetMapResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::SetMapResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::SetMapResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rns_msgs::SetMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3c1287ceb391223fa0379d36cb7dc01e";
  }

  static const char* value(const ::rns_msgs::SetMapResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3c1287ceb391223fULL;
  static const uint64_t static_value2 = 0xa0379d36cb7dc01eULL;
};

template<class ContainerAllocator>
struct DataType< ::rns_msgs::SetMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rns_msgs/SetMapResponse";
  }

  static const char* value(const ::rns_msgs::SetMapResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rns_msgs::SetMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
int32 state\n\
nav_msgs/OccupancyGrid map\n\
\n\
================================================================================\n\
MSG: nav_msgs/OccupancyGrid\n\
# This represents a 2-D grid map, in which each cell represents the probability of\n\
# occupancy.\n\
\n\
Header header \n\
\n\
#MetaData for the map\n\
MapMetaData info\n\
\n\
# The map data, in row-major order, starting with (0,0).  Occupancy\n\
# probabilities are in the range [0,100].  Unknown is -1.\n\
int8[] data\n\
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
MSG: nav_msgs/MapMetaData\n\
# This hold basic information about the characterists of the OccupancyGrid\n\
\n\
# The time at which the map was loaded\n\
time map_load_time\n\
# The map resolution [m/cell]\n\
float32 resolution\n\
# Map width [cells]\n\
uint32 width\n\
# Map height [cells]\n\
uint32 height\n\
# The origin of the map [m, m, rad].  This is the real-world pose of the\n\
# cell (0,0) in the map.\n\
geometry_msgs/Pose origin\n\
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

  static const char* value(const ::rns_msgs::SetMapResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rns_msgs::SetMapResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.map);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetMapResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rns_msgs::SetMapResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rns_msgs::SetMapResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state);
    s << indent << "map: ";
    s << std::endl;
    Printer< ::nav_msgs::OccupancyGrid_<ContainerAllocator> >::stream(s, indent + "  ", v.map);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RNS_MSGS_MESSAGE_SETMAPRESPONSE_H