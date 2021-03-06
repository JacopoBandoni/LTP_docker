// Generated by gencpp from file planning/STP_Data.msg
// DO NOT EDIT!


#ifndef PLANNING_MESSAGE_STP_DATA_H
#define PLANNING_MESSAGE_STP_DATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace planning
{
template <class ContainerAllocator>
struct STP_Data_
{
  typedef STP_Data_<ContainerAllocator> Type;

  STP_Data_()
    : version(0)
    , x(0)  {
    }
  STP_Data_(const ContainerAllocator& _alloc)
    : version(0)
    , x(0)  {
  (void)_alloc;
    }



   typedef uint16_t _version_type;
  _version_type version;

   typedef uint8_t _x_type;
  _x_type x;





  typedef boost::shared_ptr< ::planning::STP_Data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planning::STP_Data_<ContainerAllocator> const> ConstPtr;

}; // struct STP_Data_

typedef ::planning::STP_Data_<std::allocator<void> > STP_Data;

typedef boost::shared_ptr< ::planning::STP_Data > STP_DataPtr;
typedef boost::shared_ptr< ::planning::STP_Data const> STP_DataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planning::STP_Data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planning::STP_Data_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planning::STP_Data_<ContainerAllocator1> & lhs, const ::planning::STP_Data_<ContainerAllocator2> & rhs)
{
  return lhs.version == rhs.version &&
    lhs.x == rhs.x;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planning::STP_Data_<ContainerAllocator1> & lhs, const ::planning::STP_Data_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planning

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::planning::STP_Data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning::STP_Data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::STP_Data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning::STP_Data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::STP_Data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning::STP_Data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planning::STP_Data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0be9624341f9042a899053589e4c16b4";
  }

  static const char* value(const ::planning::STP_Data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0be9624341f9042aULL;
  static const uint64_t static_value2 = 0x899053589e4c16b4ULL;
};

template<class ContainerAllocator>
struct DataType< ::planning::STP_Data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planning/STP_Data";
  }

  static const char* value(const ::planning::STP_Data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planning::STP_Data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 version\n"
"uint8 x\n"
;
  }

  static const char* value(const ::planning::STP_Data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planning::STP_Data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.version);
      stream.next(m.x);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct STP_Data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planning::STP_Data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planning::STP_Data_<ContainerAllocator>& v)
  {
    s << indent << "version: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.version);
    s << indent << "x: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.x);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNING_MESSAGE_STP_DATA_H
