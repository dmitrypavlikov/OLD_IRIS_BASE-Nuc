Packages description and status:
	Base packages:
		* base_comtrol - in use - base movement control
		* roboclaw_ros - not used anymore
		* 
	Hands packages:
		* arm_control - not used yet
		* bs_arm_control - not used yet
		* DynamixelSDK - not used yet
		* dynamixel-workbench - not used yet
		* dynamixel-workbench-msgs - not used yet
		* 
	Sensors packages:
		* hokuyo_node - in use partically - [transform.py] [rescan_script.py]
		* ros_astra_camera - not used yet
		* rplidar_ros - not used yet
		* recognizer - not used yet
		*
	Navigation package:
		* navigation - in use


How to launch gmapping now?..

0. sudo chmod 777 /dev/ttyUSB0
0. sudo chmod 777 /dev/ttyUSB1
1. roslaunch base_control bringup.launch
To build map:
0. roslaunch navigation gmapping_low.launch
To navigate:
0. roslaunch navigation navigation_amcl scan:=rescan map_name:=Office_Correct

0. roslaunch navigation rviz.launch
0. rosrun navigation teleop.py

#TODO Test navigation_amcl with new map (need to use initial pose of robot)
#TODO Launch hands

