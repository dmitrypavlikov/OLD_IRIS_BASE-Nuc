#!/usr/bin/env python 
import rospy
import tf
from math import pi
from nav_msgs.msg import Odometry
astra_broadcaster = tf.TransformBroadcaster()
odom_broadcaster = tf.TransformBroadcaster()
odom = Odometry()
odom.pose.pose.orientation.w = 1

def broadcast():
	time = rospy.Time.now()
	astra_quat = tf.transformations.quaternion_from_euler(0,0,0.06)
	astra_broadcaster.sendTransform((0.1,0,0.85),astra_quat,time,"camera_link","body_link")
	x = odom.pose.pose.position.x
	y = odom.pose.pose.position.y
	quat = (0,0,odom.pose.pose.orientation.z, odom.pose.pose.orientation.w)
	euler = tf.transformations.euler_from_quaternion(quat)
	astra_quat = tf.transformations.quaternion_from_euler(0,0,euler[2])
	odom_broadcaster.sendTransform((x,y,0), astra_quat, time, "body_link", "odom")

def odomcb(data):
	global odom
	odom = data

if __name__ == '__main__':
	rospy.init_node('camera_transform')
	rospy.Subscriber("odom",Odometry,odomcb)
	rate = rospy.Rate(15.0)
	while not rospy.is_shutdown():
		try:
			broadcast()
			rate.sleep()
		except KeyboardInterrupt:
			print "TG AstraCamera ERROR"


