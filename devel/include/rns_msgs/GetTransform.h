// Generated by gencpp from file rns_msgs/GetTransform.msg
// DO NOT EDIT!


#ifndef RNS_MSGS_MESSAGE_GETTRANSFORM_H
#define RNS_MSGS_MESSAGE_GETTRANSFORM_H

#include <ros/service_traits.h>


#include <rns_msgs/GetTransformRequest.h>
#include <rns_msgs/GetTransformResponse.h>


namespace rns_msgs
{

struct GetTransform
{

typedef GetTransformRequest Request;
typedef GetTransformResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetTransform
} // namespace rns_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rns_msgs::GetTransform > {
  static const char* value()
  {
    return "aad98f5c832994617c9c8eb5f246dcf1";
  }

  static const char* value(const ::rns_msgs::GetTransform&) { return value(); }
};

template<>
struct DataType< ::rns_msgs::GetTransform > {
  static const char* value()
  {
    return "rns_msgs/GetTransform";
  }

  static const char* value(const ::rns_msgs::GetTransform&) { return value(); }
};


// service_traits::MD5Sum< ::rns_msgs::GetTransformRequest> should match 
// service_traits::MD5Sum< ::rns_msgs::GetTransform > 
template<>
struct MD5Sum< ::rns_msgs::GetTransformRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rns_msgs::GetTransform >::value();
  }
  static const char* value(const ::rns_msgs::GetTransformRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rns_msgs::GetTransformRequest> should match 
// service_traits::DataType< ::rns_msgs::GetTransform > 
template<>
struct DataType< ::rns_msgs::GetTransformRequest>
{
  static const char* value()
  {
    return DataType< ::rns_msgs::GetTransform >::value();
  }
  static const char* value(const ::rns_msgs::GetTransformRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rns_msgs::GetTransformResponse> should match 
// service_traits::MD5Sum< ::rns_msgs::GetTransform > 
template<>
struct MD5Sum< ::rns_msgs::GetTransformResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rns_msgs::GetTransform >::value();
  }
  static const char* value(const ::rns_msgs::GetTransformResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rns_msgs::GetTransformResponse> should match 
// service_traits::DataType< ::rns_msgs::GetTransform > 
template<>
struct DataType< ::rns_msgs::GetTransformResponse>
{
  static const char* value()
  {
    return DataType< ::rns_msgs::GetTransform >::value();
  }
  static const char* value(const ::rns_msgs::GetTransformResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RNS_MSGS_MESSAGE_GETTRANSFORM_H
