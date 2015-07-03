/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/NaoCoords.msg
 *
 */


#ifndef MY_KINNECT_MESSAGE_NAOCOORDS_H
#define MY_KINNECT_MESSAGE_NAOCOORDS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <std_msgs/String.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>

namespace my_kinnect
{
template <class ContainerAllocator>
struct NaoCoords_
{
  typedef NaoCoords_<ContainerAllocator> Type;

  NaoCoords_()
    : header()
    , Part()
    , Angles1()
    , Angles2()  {
    }
  NaoCoords_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Part(_alloc)
    , Angles1(_alloc)
    , Angles2(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::String_<ContainerAllocator>  _Part_type;
  _Part_type Part;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _Angles1_type;
  _Angles1_type Angles1;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _Angles2_type;
  _Angles2_type Angles2;




  typedef boost::shared_ptr< ::my_kinnect::NaoCoords_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_kinnect::NaoCoords_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct NaoCoords_

typedef ::my_kinnect::NaoCoords_<std::allocator<void> > NaoCoords;

typedef boost::shared_ptr< ::my_kinnect::NaoCoords > NaoCoordsPtr;
typedef boost::shared_ptr< ::my_kinnect::NaoCoords const> NaoCoordsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_kinnect::NaoCoords_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_kinnect::NaoCoords_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_kinnect

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg'], 'my_kinnect': ['/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg'], 'geometry_msgs': ['/opt/ros/hydro/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_kinnect::NaoCoords_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_kinnect::NaoCoords_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_kinnect::NaoCoords_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_kinnect::NaoCoords_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_kinnect::NaoCoords_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_kinnect::NaoCoords_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_kinnect::NaoCoords_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b94c4e0951bd6ceb9b4d6c9e266caa85";
  }

  static const char* value(const ::my_kinnect::NaoCoords_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb94c4e0951bd6cebULL;
  static const uint64_t static_value2 = 0x9b4d6c9e266caa85ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_kinnect::NaoCoords_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_kinnect/NaoCoords";
  }

  static const char* value(const ::my_kinnect::NaoCoords_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_kinnect::NaoCoords_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
std_msgs/String Part\n\
std_msgs/Float32 Angles1\n\
std_msgs/Float32 Angles2\n\
\n\
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
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
\n\
================================================================================\n\
MSG: std_msgs/Float32\n\
float32 data\n\
";
  }

  static const char* value(const ::my_kinnect::NaoCoords_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_kinnect::NaoCoords_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Part);
      stream.next(m.Angles1);
      stream.next(m.Angles2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct NaoCoords_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_kinnect::NaoCoords_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_kinnect::NaoCoords_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Part: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.Part);
    s << indent << "Angles1: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.Angles1);
    s << indent << "Angles2: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.Angles2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_KINNECT_MESSAGE_NAOCOORDS_H