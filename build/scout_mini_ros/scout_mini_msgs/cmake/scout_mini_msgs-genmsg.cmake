# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "scout_mini_msgs: 6 messages, 0 services")

set(MSG_I_FLAGS "-Iscout_mini_msgs:/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(scout_mini_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg" NAME_WE)
add_custom_target(_scout_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_mini_msgs" "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg" NAME_WE)
add_custom_target(_scout_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_mini_msgs" "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg" ""
)

get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg" NAME_WE)
add_custom_target(_scout_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_mini_msgs" "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg" ""
)

get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg" NAME_WE)
add_custom_target(_scout_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_mini_msgs" "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg" NAME_WE)
add_custom_target(_scout_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_mini_msgs" "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg" NAME_WE)
add_custom_target(_scout_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_mini_msgs" "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg" "std_msgs/Header:scout_mini_msgs/FaultState"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_cpp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_cpp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_cpp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_cpp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_cpp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_mini_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(scout_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(scout_mini_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(scout_mini_msgs_generate_messages scout_mini_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_cpp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_cpp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_cpp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_cpp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_cpp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_cpp _scout_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scout_mini_msgs_gencpp)
add_dependencies(scout_mini_msgs_gencpp scout_mini_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scout_mini_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_eus(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_eus(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_eus(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_eus(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_eus(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scout_mini_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(scout_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scout_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(scout_mini_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(scout_mini_msgs_generate_messages scout_mini_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_eus _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_eus _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_eus _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_eus _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_eus _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_eus _scout_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scout_mini_msgs_geneus)
add_dependencies(scout_mini_msgs_geneus scout_mini_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scout_mini_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_lisp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_lisp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_lisp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_lisp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_lisp(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_mini_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(scout_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(scout_mini_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(scout_mini_msgs_generate_messages scout_mini_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_lisp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_lisp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_lisp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_lisp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_lisp _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_lisp _scout_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scout_mini_msgs_genlisp)
add_dependencies(scout_mini_msgs_genlisp scout_mini_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scout_mini_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_nodejs(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_nodejs(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_nodejs(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_nodejs(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_nodejs(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scout_mini_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(scout_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scout_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(scout_mini_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(scout_mini_msgs_generate_messages scout_mini_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_nodejs _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_nodejs _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_nodejs _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_nodejs _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_nodejs _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_nodejs _scout_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scout_mini_msgs_gennodejs)
add_dependencies(scout_mini_msgs_gennodejs scout_mini_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scout_mini_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_py(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_py(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_py(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_py(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs
)
_generate_msg_py(scout_mini_msgs
  "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(scout_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(scout_mini_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(scout_mini_msgs_generate_messages scout_mini_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_py _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_py _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_py _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_py _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_py _scout_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(scout_mini_msgs_generate_messages_py _scout_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scout_mini_msgs_genpy)
add_dependencies(scout_mini_msgs_genpy scout_mini_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scout_mini_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_mini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_mini_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(scout_mini_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scout_mini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scout_mini_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(scout_mini_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_mini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_mini_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(scout_mini_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scout_mini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scout_mini_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(scout_mini_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_mini_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(scout_mini_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
