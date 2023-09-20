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
1. roscore
2. roslaunch base_control base_control.launch
3. roslaunch hls_lfcd_lds_driver hlds_laser.launch
4. rosrun hokuyo_node rescan_script.py
5. rosrun hokuyo_node transform.py
6. roslaunch navigation gmapping_low.launch
7. roslaunch navigation rviz.launch
8. rosrun navigation teleop.py

#TODO Create bringup.launch

