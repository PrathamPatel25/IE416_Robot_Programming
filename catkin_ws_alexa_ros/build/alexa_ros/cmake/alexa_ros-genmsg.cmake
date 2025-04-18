# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "alexa_ros: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ialexa_ros:/home/robot/catkin_ws/devel/share/alexa_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(alexa_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg" NAME_WE)
add_custom_target(_alexa_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "alexa_ros" "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg" "actionlib_msgs/GoalStatus:alexa_ros/AlexaTaskActionFeedback:alexa_ros/AlexaTaskActionResult:actionlib_msgs/GoalID:alexa_ros/AlexaTaskActionGoal:alexa_ros/AlexaTaskGoal:std_msgs/Header:alexa_ros/AlexaTaskFeedback:alexa_ros/AlexaTaskResult"
)

get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg" NAME_WE)
add_custom_target(_alexa_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "alexa_ros" "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:alexa_ros/AlexaTaskGoal"
)

get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg" NAME_WE)
add_custom_target(_alexa_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "alexa_ros" "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:alexa_ros/AlexaTaskResult"
)

get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg" NAME_WE)
add_custom_target(_alexa_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "alexa_ros" "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:alexa_ros/AlexaTaskFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg" NAME_WE)
add_custom_target(_alexa_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "alexa_ros" "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg" ""
)

get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg" NAME_WE)
add_custom_target(_alexa_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "alexa_ros" "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg" ""
)

get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg" NAME_WE)
add_custom_target(_alexa_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "alexa_ros" "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros
)
_generate_msg_cpp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros
)
_generate_msg_cpp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros
)
_generate_msg_cpp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros
)
_generate_msg_cpp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros
)
_generate_msg_cpp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros
)
_generate_msg_cpp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(alexa_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(alexa_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(alexa_ros_generate_messages alexa_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_cpp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_cpp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_cpp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_cpp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_cpp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_cpp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_cpp _alexa_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(alexa_ros_gencpp)
add_dependencies(alexa_ros_gencpp alexa_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS alexa_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros
)
_generate_msg_eus(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros
)
_generate_msg_eus(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros
)
_generate_msg_eus(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros
)
_generate_msg_eus(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros
)
_generate_msg_eus(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros
)
_generate_msg_eus(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(alexa_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(alexa_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(alexa_ros_generate_messages alexa_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_eus _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_eus _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_eus _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_eus _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_eus _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_eus _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_eus _alexa_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(alexa_ros_geneus)
add_dependencies(alexa_ros_geneus alexa_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS alexa_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros
)
_generate_msg_lisp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros
)
_generate_msg_lisp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros
)
_generate_msg_lisp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros
)
_generate_msg_lisp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros
)
_generate_msg_lisp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros
)
_generate_msg_lisp(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(alexa_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(alexa_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(alexa_ros_generate_messages alexa_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_lisp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_lisp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_lisp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_lisp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_lisp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_lisp _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_lisp _alexa_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(alexa_ros_genlisp)
add_dependencies(alexa_ros_genlisp alexa_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS alexa_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros
)
_generate_msg_nodejs(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros
)
_generate_msg_nodejs(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros
)
_generate_msg_nodejs(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros
)
_generate_msg_nodejs(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros
)
_generate_msg_nodejs(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros
)
_generate_msg_nodejs(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(alexa_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(alexa_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(alexa_ros_generate_messages alexa_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_nodejs _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_nodejs _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_nodejs _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_nodejs _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_nodejs _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_nodejs _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_nodejs _alexa_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(alexa_ros_gennodejs)
add_dependencies(alexa_ros_gennodejs alexa_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS alexa_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros
)
_generate_msg_py(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros
)
_generate_msg_py(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros
)
_generate_msg_py(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros
)
_generate_msg_py(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros
)
_generate_msg_py(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros
)
_generate_msg_py(alexa_ros
  "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros
)

### Generating Services

### Generating Module File
_generate_module_py(alexa_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(alexa_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(alexa_ros_generate_messages alexa_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskAction.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_py _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_py _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_py _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskActionFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_py _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskGoal.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_py _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskResult.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_py _alexa_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/devel/share/alexa_ros/msg/AlexaTaskFeedback.msg" NAME_WE)
add_dependencies(alexa_ros_generate_messages_py _alexa_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(alexa_ros_genpy)
add_dependencies(alexa_ros_genpy alexa_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS alexa_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/alexa_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(alexa_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(alexa_ros_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/alexa_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(alexa_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(alexa_ros_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/alexa_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(alexa_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(alexa_ros_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/alexa_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(alexa_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(alexa_ros_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/alexa_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(alexa_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(alexa_ros_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
