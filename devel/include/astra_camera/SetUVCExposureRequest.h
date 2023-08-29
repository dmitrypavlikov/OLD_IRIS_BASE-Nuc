// Generated by gencpp from file astra_camera/SetUVCExposureRequest.msg
// DO NOT EDIT!


#ifndef ASTRA_CAMERA_MESSAGE_SETUVCEXPOSUREREQUEST_H
#define ASTRA_CAMERA_MESSAGE_SETUVCEXPOSUREREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace astra_camera
{
template <class ContainerAllocator>
struct SetUVCExposureRequest_
{
  typedef SetUVCExposureRequest_<ContainerAllocator> Type;

  SetUVCExposureRequest_()
    : exposure(0)  {
    }
  SetUVCExposureRequest_(const ContainerAllocator& _alloc)
    : exposure(0)  {
  (void)_alloc;
    }



   typedef int32_t _exposure_type;
  _exposure_type exposure;





  typedef boost::shared_ptr< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetUVCExposureRequest_

typedef ::astra_camera::SetUVCExposureRequest_<std::allocator<void> > SetUVCExposureRequest;

typedef boost::shared_ptr< ::astra_camera::SetUVCExposureRequest > SetUVCExposureRequestPtr;
typedef boost::shared_ptr< ::astra_camera::SetUVCExposureRequest const> SetUVCExposureRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace astra_camera

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0535ed1a1204bb999d0e7bea8f6c3c81";
  }

  static const char* value(const ::astra_camera::SetUVCExposureRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0535ed1a1204bb99ULL;
  static const uint64_t static_value2 = 0x9d0e7bea8f6c3c81ULL;
};

template<class ContainerAllocator>
struct DataType< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "astra_camera/SetUVCExposureRequest";
  }

  static const char* value(const ::astra_camera::SetUVCExposureRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 exposure\n\
";
  }

  static const char* value(const ::astra_camera::SetUVCExposureRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.exposure);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetUVCExposureRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::astra_camera::SetUVCExposureRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::astra_camera::SetUVCExposureRequest_<ContainerAllocator>& v)
  {
    s << indent << "exposure: ";
    Printer<int32_t>::stream(s, indent + "  ", v.exposure);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASTRA_CAMERA_MESSAGE_SETUVCEXPOSUREREQUEST_H
