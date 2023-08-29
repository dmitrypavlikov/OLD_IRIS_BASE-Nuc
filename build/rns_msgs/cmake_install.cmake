# Install script for directory: /home/joji/iris_ws/src/rns_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/joji/iris_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rns_msgs/msg" TYPE FILE FILES
    "/home/joji/iris_ws/src/rns_msgs/msg/AnnotatedPath.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/Waypoint.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/Annotation.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/AnnotationUpdate.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/MapCell.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/MapContents.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/MapInfo.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/MapPage.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/ScanPose.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/RawIMU.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/WifiState.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/JointConfig.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/JointCmd.msg"
    "/home/joji/iris_ws/src/rns_msgs/msg/RangeArray.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rns_msgs/srv" TYPE FILE FILES
    "/home/joji/iris_ws/src/rns_msgs/srv/AnnotationModify.srv"
    "/home/joji/iris_ws/src/rns_msgs/srv/AnnotationRequest.srv"
    "/home/joji/iris_ws/src/rns_msgs/srv/NodeControl.srv"
    "/home/joji/iris_ws/src/rns_msgs/srv/GetMapContents.srv"
    "/home/joji/iris_ws/src/rns_msgs/srv/GetTransform.srv"
    "/home/joji/iris_ws/src/rns_msgs/srv/SetMap.srv"
    "/home/joji/iris_ws/src/rns_msgs/srv/SetPose.srv"
    "/home/joji/iris_ws/src/rns_msgs/srv/SetJointConfig.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rns_msgs/action" TYPE FILE FILES "/home/joji/iris_ws/src/rns_msgs/action/MoveTo.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rns_msgs/msg" TYPE FILE FILES
    "/home/joji/iris_ws/devel/share/rns_msgs/msg/MoveToAction.msg"
    "/home/joji/iris_ws/devel/share/rns_msgs/msg/MoveToActionGoal.msg"
    "/home/joji/iris_ws/devel/share/rns_msgs/msg/MoveToActionResult.msg"
    "/home/joji/iris_ws/devel/share/rns_msgs/msg/MoveToActionFeedback.msg"
    "/home/joji/iris_ws/devel/share/rns_msgs/msg/MoveToGoal.msg"
    "/home/joji/iris_ws/devel/share/rns_msgs/msg/MoveToResult.msg"
    "/home/joji/iris_ws/devel/share/rns_msgs/msg/MoveToFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rns_msgs/cmake" TYPE FILE FILES "/home/joji/iris_ws/build/rns_msgs/catkin_generated/installspace/rns_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/joji/iris_ws/devel/include/rns_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/joji/iris_ws/devel/share/roseus/ros/rns_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/joji/iris_ws/devel/share/common-lisp/ros/rns_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/joji/iris_ws/devel/share/gennodejs/ros/rns_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/joji/iris_ws/devel/lib/python2.7/dist-packages/rns_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/joji/iris_ws/devel/lib/python2.7/dist-packages/rns_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/joji/iris_ws/build/rns_msgs/catkin_generated/installspace/rns_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rns_msgs/cmake" TYPE FILE FILES "/home/joji/iris_ws/build/rns_msgs/catkin_generated/installspace/rns_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rns_msgs/cmake" TYPE FILE FILES
    "/home/joji/iris_ws/build/rns_msgs/catkin_generated/installspace/rns_msgsConfig.cmake"
    "/home/joji/iris_ws/build/rns_msgs/catkin_generated/installspace/rns_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rns_msgs" TYPE FILE FILES "/home/joji/iris_ws/src/rns_msgs/package.xml")
endif()

