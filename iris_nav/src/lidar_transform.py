#!/usr/bin/env python 
import rospy
import tf
from math import pi
from nav_msgs.msg import Odometry
ls_broadcaster = tf.TransformBroadcaster()
odom_broadcaster = tf.TransformBroadcaster()
odom = Odometry()
odom.pose.pose.orientation.w = 1

def broadcast():
	time = rospy.Time.now()
	ls_quat = tf.transformations.quaternion_from_euler(0,0,0)
	ls_broadcaster.sendTransform((0.15,0,0.2),ls_quat,time,"laser","base_link")
	x = odom.pose.pose.position.x
	y = odom.pose.pose.position.y
	quat = (0,0,odom.pose.pose.orientation.z, odom.pose.pose.orientation.w)
	euler = tf.transformations.euler_from_quaternion(quat)
	ls_quat = tf.transformations.quaternion_from_euler(0,0,euler[2])
	odom_broadcaster.sendTransform((x,y,0), ls_quat, time, "base_link", "odom")
def odomcb(data):
	global odom
	odom = data
	

if __name__ == '__main__':
	rospy.init_node('lidar_transform')
	rospy.Subscriber("odom",Odometry,odomcb)
	rate = rospy.Rate(15.0)
	while not rospy.is_shutdown():
		try:
			broadcast()
			rate.sleep()
		except KeyboardInterrupt:
			print "TF LaserScan ERROR"



