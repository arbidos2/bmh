# Install script for directory: /home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/oem/catkin_JS_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scout_mini_msgs/msg" TYPE FILE FILES
    "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/DriverState.msg"
    "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/FaultState.msg"
    "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightCommand.msg"
    "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/LightState.msg"
    "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/MotorState.msg"
    "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg/RobotState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scout_mini_msgs/cmake" TYPE FILE FILES "/home/oem/catkin_JS_ws/build/scout_mini_ros/scout_mini_msgs/catkin_generated/installspace/scout_mini_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/oem/catkin_JS_ws/devel/include/scout_mini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/oem/catkin_JS_ws/devel/share/roseus/ros/scout_mini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/oem/catkin_JS_ws/devel/share/common-lisp/ros/scout_mini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/oem/catkin_JS_ws/devel/share/gennodejs/ros/scout_mini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/oem/catkin_JS_ws/devel/lib/python3/dist-packages/scout_mini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/oem/catkin_JS_ws/devel/lib/python3/dist-packages/scout_mini_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/oem/catkin_JS_ws/build/scout_mini_ros/scout_mini_msgs/catkin_generated/installspace/scout_mini_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scout_mini_msgs/cmake" TYPE FILE FILES "/home/oem/catkin_JS_ws/build/scout_mini_ros/scout_mini_msgs/catkin_generated/installspace/scout_mini_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scout_mini_msgs/cmake" TYPE FILE FILES
    "/home/oem/catkin_JS_ws/build/scout_mini_ros/scout_mini_msgs/catkin_generated/installspace/scout_mini_msgsConfig.cmake"
    "/home/oem/catkin_JS_ws/build/scout_mini_ros/scout_mini_msgs/catkin_generated/installspace/scout_mini_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scout_mini_msgs" TYPE FILE FILES "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scout_mini_msgs" TYPE DIRECTORY FILES "/home/oem/catkin_JS_ws/src/scout_mini_ros/scout_mini_msgs/msg")
endif()

