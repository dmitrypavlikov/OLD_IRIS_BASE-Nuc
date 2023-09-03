// Generated by gencpp from file rns_msgs/JointCmd.msg
// DO NOT EDIT!


#ifndef RNS_MSGS_MESSAGE_JOINTCMD_H
#define RNS_MSGS_MESSAGE_JOINTCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rns_msgs
{
template <class ContainerAllocator>
struct JointCmd_
{
  typedef JointCmd_<ContainerAllocator> Type;

  JointCmd_()
    : channel(0)
    , cmd(0.0)  {
    }
  JointCmd_(const ContainerAllocator& _alloc)
    : channel(0)
    , cmd(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _channel_type;
  _channel_type channel;

   typedef float _cmd_type;
  _cmd_type cmd;





  typedef boost::shared_ptr< ::rns_msgs::JointCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rns_msgs::JointCmd_<ContainerAllocator> const> ConstPtr;

}; // struct JointCmd_

typedef ::rns_msgs::JointCmd_<std::allocator<void> > JointCmd;

typedef boost::shared_ptr< ::rns_msgs::JointCmd > JointCmdPtr;
typedef boost::shared_ptr< ::rns_msgs::JointCmd const> JointCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rns_msgs::JointCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rns_msgs::JointCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rns_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'rns_msgs': ['/home/joji/iris_ws/src/rns_msgs/msg', '/home/joji/iris_ws/devel/share/rns_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rns_msgs::JointCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rns_msgs::JointCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::JointCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::JointCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::JointCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::JointCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rns_msgs::JointCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c6c6db516e281ccd39d5b21f9184ccaf";
  }

  static const char* value(const ::rns_msgs::JointCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc6c6db516e281ccdULL;
  static const uint64_t static_value2 = 0x39d5b21f9184ccafULL;
};

template<class ContainerAllocator>
struct DataType< ::rns_msgs::JointCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rns_msgs/JointCmd";
  }

  static const char* value(const ::rns_msgs::JointCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rns_msgs::JointCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Joint channel ID\n\
int32 channel\n\
\n\
# Command for channel\n\
float32 cmd\n\
";
  }

  static const char* value(const ::rns_msgs::JointCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rns_msgs::JointCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channel);
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rns_msgs::JointCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rns_msgs::JointCmd_<ContainerAllocator>& v)
  {
    s << indent << "channel: ";
    Printer<int32_t>::stream(s, indent + "  ", v.channel);
    s << indent << "cmd: ";
    Printer<float>::stream(s, indent + "  ", v.cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RNS_MSGS_MESSAGE_JOINTCMD_H