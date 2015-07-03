# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_kinnect: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imy_kinnect:/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_kinnect_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_kinnect
  "/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/SkeletonCoords.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_kinnect
)
_generate_msg_cpp(my_kinnect
  "/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/NaoCoords.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_kinnect
)

### Generating Services

### Generating Module File
_generate_module_cpp(my_kinnect
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_kinnect
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_kinnect_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_kinnect_generate_messages my_kinnect_generate_messages_cpp)

# target for backward compatibility
add_custom_target(my_kinnect_gencpp)
add_dependencies(my_kinnect_gencpp my_kinnect_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_kinnect_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_kinnect
  "/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/SkeletonCoords.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_kinnect
)
_generate_msg_lisp(my_kinnect
  "/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/NaoCoords.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_kinnect
)

### Generating Services

### Generating Module File
_generate_module_lisp(my_kinnect
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_kinnect
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_kinnect_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_kinnect_generate_messages my_kinnect_generate_messages_lisp)

# target for backward compatibility
add_custom_target(my_kinnect_genlisp)
add_dependencies(my_kinnect_genlisp my_kinnect_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_kinnect_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_kinnect
  "/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/SkeletonCoords.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_kinnect
)
_generate_msg_py(my_kinnect
  "/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/NaoCoords.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_kinnect
)

### Generating Services

### Generating Module File
_generate_module_py(my_kinnect
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_kinnect
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_kinnect_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_kinnect_generate_messages my_kinnect_generate_messages_py)

# target for backward compatibility
add_custom_target(my_kinnect_genpy)
add_dependencies(my_kinnect_genpy my_kinnect_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_kinnect_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_kinnect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_kinnect
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(my_kinnect_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_kinnect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_kinnect
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(my_kinnect_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_kinnect)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_kinnect\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_kinnect
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(my_kinnect_generate_messages_py geometry_msgs_generate_messages_py)
