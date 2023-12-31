cmake_minimum_required(VERSION 2.8.3)
project(rns_msgs)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  nav_msgs
  sensor_msgs
  std_msgs
  actionlib
)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend tag for "message_generation"
##   * add a build_depend and a run_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in
##     but can be declared for certainty nonetheless:
##     * add a run_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

# Generate messages in the 'msg' folder
add_message_files(FILES
   AnnotatedPath.msg
   Waypoint.msg
   Annotation.msg
   AnnotationUpdate.msg
   MapCell.msg
   MapContents.msg
   MapInfo.msg
   MapPage.msg
   ScanPose.msg
   RawIMU.msg
   WifiState.msg
   JointConfig.msg
   JointCmd.msg
   RangeArray.msg
)

## Generate services in the 'srv' folder
add_service_files(FILES
   AnnotationModify.srv
   AnnotationRequest.srv
   NodeControl.srv
   GetMapContents.srv
   GetTransform.srv
   SetMap.srv
   SetPose.srv
   SetJointConfig.srv
)

## Generate actions in the 'action' folder
add_action_files(FILES MoveTo.action)

## Generate added messages and services with any dependencies listed here
generate_messages(DEPENDENCIES nav_msgs   sensor_msgs   std_msgs)


###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES rns_msgs
  CATKIN_DEPENDS nav_msgs sensor_msgs std_msgs
#  DEPENDS system_lib
)
