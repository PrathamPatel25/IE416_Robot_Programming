cmake_minimum_required(VERSION 3.0.2)
project(alexa_ros)

## Compile as C++11
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  actionlib_msgs
  message_generation
)

## Declare ROS actions
add_action_files(
  DIRECTORY action
  FILES AlexaTask.action
)

## Generate added messages and actions with dependencies
generate_messages(
  DEPENDENCIES std_msgs actionlib_msgs
)

## Declare catkin package
catkin_package(
  CATKIN_DEPENDS roscpp rospy std_msgs actionlib_msgs message_runtime
)

## Include directories
include_directories(
  ${catkin_INCLUDE_DIRS}
)

# Optionally, you can uncomment and add build targets here for executables/libraries
# if your package includes C++ nodes.

