// Generated by gencpp from file rns_msgs/AnnotationRequestRequest.msg
// DO NOT EDIT!


#ifndef RNS_MSGS_MESSAGE_ANNOTATIONREQUESTREQUEST_H
#define RNS_MSGS_MESSAGE_ANNOTATIONREQUESTREQUEST_H


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
struct AnnotationRequestRequest_
{
  typedef AnnotationRequestRequest_<ContainerAllocator> Type;

  AnnotationRequestRequest_()
    : full(false)
    , ids()
    , filter()
    , restricted_only(false)  {
    }
  AnnotationRequestRequest_(const ContainerAllocator& _alloc)
    : full(false)
    , ids(_alloc)
    , filter(_alloc)
    , restricted_only(false)  {
  (void)_alloc;
    }



   typedef uint8_t _full_type;
  _full_type full;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _ids_type;
  _ids_type ids;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _filter_type;
  _filter_type filter;

   typedef uint8_t _restricted_only_type;
  _restricted_only_type restricted_only;





  typedef boost::shared_ptr< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AnnotationRequestRequest_

typedef ::rns_msgs::AnnotationRequestRequest_<std::allocator<void> > AnnotationRequestRequest;

typedef boost::shared_ptr< ::rns_msgs::AnnotationRequestRequest > AnnotationRequestRequestPtr;
typedef boost::shared_ptr< ::rns_msgs::AnnotationRequestRequest const> AnnotationRequestRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d96230dfe82165c8feeeeea21507b7e2";
  }

  static const char* value(const ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd96230dfe82165c8ULL;
  static const uint64_t static_value2 = 0xfeeeeea21507b7e2ULL;
};

template<class ContainerAllocator>
struct DataType< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rns_msgs/AnnotationRequestRequest";
  }

  static const char* value(const ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool full\n\
int64[] ids\n\
\n\
\n\
string filter\n\
\n\
bool restricted_only\n\
";
  }

  static const char* value(const ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.full);
      stream.next(m.ids);
      stream.next(m.filter);
      stream.next(m.restricted_only);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AnnotationRequestRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rns_msgs::AnnotationRequestRequest_<ContainerAllocator>& v)
  {
    s << indent << "full: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.full);
    s << indent << "ids[]" << std::endl;
    for (size_t i = 0; i < v.ids.size(); ++i)
    {
      s << indent << "  ids[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.ids[i]);
    }
    s << indent << "filter: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.filter);
    s << indent << "restricted_only: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.restricted_only);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RNS_MSGS_MESSAGE_ANNOTATIONREQUESTREQUEST_H