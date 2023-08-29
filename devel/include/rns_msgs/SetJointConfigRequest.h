// Generated by gencpp from file rns_msgs/SetJointConfigRequest.msg
// DO NOT EDIT!


#ifndef RNS_MSGS_MESSAGE_SETJOINTCONFIGREQUEST_H
#define RNS_MSGS_MESSAGE_SETJOINTCONFIGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rns_msgs/JointConfig.h>

namespace rns_msgs
{
template <class ContainerAllocator>
struct SetJointConfigRequest_
{
  typedef SetJointConfigRequest_<ContainerAllocator> Type;

  SetJointConfigRequest_()
    : config()  {
    }
  SetJointConfigRequest_(const ContainerAllocator& _alloc)
    : config(_alloc)  {
  (void)_alloc;
    }



   typedef  ::rns_msgs::JointConfig_<ContainerAllocator>  _config_type;
  _config_type config;





  typedef boost::shared_ptr< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetJointConfigRequest_

typedef ::rns_msgs::SetJointConfigRequest_<std::allocator<void> > SetJointConfigRequest;

typedef boost::shared_ptr< ::rns_msgs::SetJointConfigRequest > SetJointConfigRequestPtr;
typedef boost::shared_ptr< ::rns_msgs::SetJointConfigRequest const> SetJointConfigRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aefdfb811a21f3ae00627bc0f548209c";
  }

  static const char* value(const ::rns_msgs::SetJointConfigRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaefdfb811a21f3aeULL;
  static const uint64_t static_value2 = 0x00627bc0f548209cULL;
};

template<class ContainerAllocator>
struct DataType< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rns_msgs/SetJointConfigRequest";
  }

  static const char* value(const ::rns_msgs::SetJointConfigRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "JointConfig config\n\
\n\
================================================================================\n\
MSG: rns_msgs/JointConfig\n\
# Message describes joint parameterss\n\
\n\
# Joint channel ID\n\
int32 channel\n\
# Regulator parameters\n\
float32 P\n\
float32 I\n\
float32 D\n\
float32 rate\n\
\n\
# Joint limits\n\
float32 max_velocity\n\
float32 lower_bound\n\
float32 upper_bound\n\
bool limit_position\n\
";
  }

  static const char* value(const ::rns_msgs::SetJointConfigRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.config);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetJointConfigRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rns_msgs::SetJointConfigRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rns_msgs::SetJointConfigRequest_<ContainerAllocator>& v)
  {
    s << indent << "config: ";
    s << std::endl;
    Printer< ::rns_msgs::JointConfig_<ContainerAllocator> >::stream(s, indent + "  ", v.config);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RNS_MSGS_MESSAGE_SETJOINTCONFIGREQUEST_H
