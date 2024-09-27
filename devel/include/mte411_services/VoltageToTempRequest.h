// Generated by gencpp from file mte411_services/VoltageToTempRequest.msg
// DO NOT EDIT!


#ifndef MTE411_SERVICES_MESSAGE_VOLTAGETOTEMPREQUEST_H
#define MTE411_SERVICES_MESSAGE_VOLTAGETOTEMPREQUEST_H


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
struct VoltageToTempRequest_
{
  typedef VoltageToTempRequest_<ContainerAllocator> Type;

  VoltageToTempRequest_()
    : voltage()  {
    }
  VoltageToTempRequest_(const ContainerAllocator& _alloc)
    : voltage(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _voltage_type;
  _voltage_type voltage;





  typedef boost::shared_ptr< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> const> ConstPtr;

}; // struct VoltageToTempRequest_

typedef ::mte411_services::VoltageToTempRequest_<std::allocator<void> > VoltageToTempRequest;

typedef boost::shared_ptr< ::mte411_services::VoltageToTempRequest > VoltageToTempRequestPtr;
typedef boost::shared_ptr< ::mte411_services::VoltageToTempRequest const> VoltageToTempRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mte411_services::VoltageToTempRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mte411_services::VoltageToTempRequest_<ContainerAllocator1> & lhs, const ::mte411_services::VoltageToTempRequest_<ContainerAllocator2> & rhs)
{
  return lhs.voltage == rhs.voltage;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mte411_services::VoltageToTempRequest_<ContainerAllocator1> & lhs, const ::mte411_services::VoltageToTempRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mte411_services

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8ded52337d62e5e8cd925618893829d9";
  }

  static const char* value(const ::mte411_services::VoltageToTempRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8ded52337d62e5e8ULL;
  static const uint64_t static_value2 = 0xcd925618893829d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mte411_services/VoltageToTempRequest";
  }

  static const char* value(const ::mte411_services::VoltageToTempRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 voltage \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::mte411_services::VoltageToTempRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.voltage);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VoltageToTempRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mte411_services::VoltageToTempRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mte411_services::VoltageToTempRequest_<ContainerAllocator>& v)
  {
    s << indent << "voltage: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.voltage);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MTE411_SERVICES_MESSAGE_VOLTAGETOTEMPREQUEST_H
