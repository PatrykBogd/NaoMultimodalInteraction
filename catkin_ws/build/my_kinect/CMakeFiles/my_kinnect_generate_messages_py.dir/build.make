# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bohun/nao/ros/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bohun/nao/ros/catkin_ws/build

# Utility rule file for my_kinnect_generate_messages_py.

# Include the progress variables for this target.
include my_kinect/CMakeFiles/my_kinnect_generate_messages_py.dir/progress.make

my_kinect/CMakeFiles/my_kinnect_generate_messages_py: /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_SkeletonCoords.py
my_kinect/CMakeFiles/my_kinnect_generate_messages_py: /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_NaoCoords.py
my_kinect/CMakeFiles/my_kinnect_generate_messages_py: /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/__init__.py

/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_SkeletonCoords.py: /opt/ros/hydro/share/genpy/cmake/../../../lib/genpy/genmsg_py.py
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_SkeletonCoords.py: /home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/SkeletonCoords.msg
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_SkeletonCoords.py: /opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_SkeletonCoords.py: /opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_SkeletonCoords.py: /opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bohun/nao/ros/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating Python from MSG my_kinnect/SkeletonCoords"
	cd /home/bohun/nao/ros/catkin_ws/build/my_kinect && ../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/hydro/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/SkeletonCoords.msg -Imy_kinnect:/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg -Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg -p my_kinnect -o /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg

/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_NaoCoords.py: /opt/ros/hydro/share/genpy/cmake/../../../lib/genpy/genmsg_py.py
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_NaoCoords.py: /home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/NaoCoords.msg
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_NaoCoords.py: /opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_NaoCoords.py: /opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_NaoCoords.py: /opt/ros/hydro/share/std_msgs/cmake/../msg/Float32.msg
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bohun/nao/ros/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating Python from MSG my_kinnect/NaoCoords"
	cd /home/bohun/nao/ros/catkin_ws/build/my_kinect && ../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/hydro/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /home/bohun/nao/ros/catkin_ws/src/my_kinect/msg/NaoCoords.msg -Imy_kinnect:/home/bohun/nao/ros/catkin_ws/src/my_kinect/msg -Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg -p my_kinnect -o /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg

/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/__init__.py: /opt/ros/hydro/share/genpy/cmake/../../../lib/genpy/genmsg_py.py
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/__init__.py: /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_SkeletonCoords.py
/home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/__init__.py: /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_NaoCoords.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bohun/nao/ros/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating Python msg __init__.py for my_kinnect"
	cd /home/bohun/nao/ros/catkin_ws/build/my_kinect && ../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/hydro/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg --initpy

my_kinnect_generate_messages_py: my_kinect/CMakeFiles/my_kinnect_generate_messages_py
my_kinnect_generate_messages_py: /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_SkeletonCoords.py
my_kinnect_generate_messages_py: /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/_NaoCoords.py
my_kinnect_generate_messages_py: /home/bohun/nao/ros/catkin_ws/devel/lib/python2.7/dist-packages/my_kinnect/msg/__init__.py
my_kinnect_generate_messages_py: my_kinect/CMakeFiles/my_kinnect_generate_messages_py.dir/build.make
.PHONY : my_kinnect_generate_messages_py

# Rule to build all files generated by this target.
my_kinect/CMakeFiles/my_kinnect_generate_messages_py.dir/build: my_kinnect_generate_messages_py
.PHONY : my_kinect/CMakeFiles/my_kinnect_generate_messages_py.dir/build

my_kinect/CMakeFiles/my_kinnect_generate_messages_py.dir/clean:
	cd /home/bohun/nao/ros/catkin_ws/build/my_kinect && $(CMAKE_COMMAND) -P CMakeFiles/my_kinnect_generate_messages_py.dir/cmake_clean.cmake
.PHONY : my_kinect/CMakeFiles/my_kinnect_generate_messages_py.dir/clean

my_kinect/CMakeFiles/my_kinnect_generate_messages_py.dir/depend:
	cd /home/bohun/nao/ros/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bohun/nao/ros/catkin_ws/src /home/bohun/nao/ros/catkin_ws/src/my_kinect /home/bohun/nao/ros/catkin_ws/build /home/bohun/nao/ros/catkin_ws/build/my_kinect /home/bohun/nao/ros/catkin_ws/build/my_kinect/CMakeFiles/my_kinnect_generate_messages_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_kinect/CMakeFiles/my_kinnect_generate_messages_py.dir/depend

