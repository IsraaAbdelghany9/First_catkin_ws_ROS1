// Generated by gencpp from file mte411_services/RandomResponse.msg
// DO NOT EDIT!


#ifndef MTE411_SERVICES_MESSAGE_RANDOMRESPONSE_H
#define MTE411_SERVICES_MESSAGE_RANDOMRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>

namespace mte411_services
{
template <class ContainerAllocator>
struct RandomResponse_
{
  typedef RandomResponse_<ContainerAllocator> Type;

  RandomResponse_()
    : numder()  {
    }
  RandomResponse_(const ContainerAllocator& _alloc)
    : numder(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _numder_type;
  _numder_type numder;





  typedef boost::shared_ptr< ::mte411_services::RandomResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mte411_services::RandomResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RandomResponse_

typedef ::mte411_services::RandomResponse_<std::allocator<void> > RandomResponse;

typedef boost::shared_ptr< ::mte411_services::RandomResponse > RandomResponsePtr;
typedef boost::shared_ptr< ::mte411_services::RandomResponse const> RandomResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mte411_services::RandomResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mte411_services::RandomResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mte411_services::RandomResponse_<ContainerAllocator1> & lhs, const ::mte411_services::RandomResponse_<ContainerAllocator2> & rhs)
{
  return lhs.numder == rhs.numder;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mte411_services::RandomResponse_<ContainerAllocator1> & lhs, const ::mte411_services::RandomResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mte411_services

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mte411_services::RandomResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mte411_services::RandomResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mte411_services::RandomResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mte411_services::RandomResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mte411_services::RandomResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mte411_services::RandomResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mte411_services::RandomResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c2e61a8ac1252960cbae79b2a4fd89bc";
  }

  static const char* value(const ::mte411_services::RandomResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc2e61a8ac1252960ULL;
  static const uint64_t static_value2 = 0xcbae79b2a4fd89bcULL;
};

template<class ContainerAllocator>
struct DataType< ::mte411_services::RandomResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mte411_services/RandomResponse";
  }

  static const char* value(const ::mte411_services::RandomResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mte411_services::RandomResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 numder\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::mte411_services::RandomResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mte411_services::RandomResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.numder);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RandomResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mte411_services::RandomResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mte411_services::RandomResponse_<ContainerAllocator>& v)
  {
    s << indent << "numder: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.numder);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MTE411_SERVICES_MESSAGE_RANDOMRESPONSE_H
