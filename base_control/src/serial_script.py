#!/usr/bin/env python

import rospy
import serial
import tf
from math import pi

from std_msgs.msg import Header
from time import sleep, time
from geometry_msgs.msg import Twist, Quaternion
from nav_msgs.msg import Odometry

class SerialControl():
	def __init__(self):
		self.ser = serial.Serial('/dev/base', 115200 ,timeout=0.1)
		self.previous_cmd_time = 0
		self.odom_pub = rospy.Publisher('/odom', Odometry, queue_size=10)
		self.cur_x = 0.0
		self.cur_y = 0.0
		self.cur_theta = 0.0
		self.vel_x = 0.0
		self.vel_th = 0.0

		
		#self.pres_vel = Twist()
		#self.pres_vel_pub = rospy.Publisher('pres_vel', Twist, queue_size=1)

		#self.line = []
		#self.jointstate = JointState()
		#self.num_of_wheels = 2
		#self.jointstate.header.frame_id = 'base_link'
		#for i in range(0, self.num_of_wheels):
		#	self.jointstate.name.append("motor_"+str(i+1))
		#	self.jointstate.position.append(0)
		#	self.jointstate.effort.append(0)
		#	self.jointstate.velocity.append(0)
		#	self.array_msg = UInt32MultiArray()
 		#self.js_pub = rospy.Publisher('joint_state', JointState, queue_size=1)
		self.sub_cmd = rospy.Subscriber("cmd_vel", Twist, self.cmd_cb)
       
	def publish_odom(self, cur_x, cur_y, cur_theta, vx, vth):
		quat = tf.transformations.quaternion_from_euler(0, 0, cur_theta)
		current_time = rospy.Time.now()
		odom = Odometry()
		odom.header.stamp = current_time
		odom.header.frame_id = 'odom'
		odom.pose.pose.position.x = cur_x
		odom.pose.pose.position.y = cur_y
		odom.pose.pose.position.z = 0.0
		odom.pose.pose.orientation = Quaternion(*quat)

		odom.pose.covariance[0] = 0.01
		odom.pose.covariance[7] = 0.01
		odom.pose.covariance[14] = 99999
		odom.pose.covariance[21] = 99999
		odom.pose.covariance[28] = 99999
		odom.pose.covariance[35] = 0.01

		odom.child_frame_id = 'base_link'
		odom.twist.twist.linear.x = vx
		odom.twist.twist.linear.y = 0
		odom.twist.twist.angular.z = vth
		odom.twist.covariance = odom.pose.covariance

		self.odom_pub.publish(odom)


	def read(self):
		buf = str(self.ser.readline())
		buf = buf.split(',')
		if buf[0] == 'pos':
			self.cur_x = float(buf[1])
			self.cur_y = float(buf[2])
			self.theta = float(buf[3])
			self.vel_x = float(buf[4])
			self.vel_th = float(buf[5])
			self.publish_odom(self.cur_x, self.cur_y, self.theta, self.vel_x, self.vel_th)

	def cmd_cb(self, data):
		if(float(time() - self.previous_cmd_time) > 0.12):
			string = str(round(data.linear.x, 2))  + "," + str(round(data.angular.z, 2)) + "\n"
			self.ser.write(string.encode())
			self.previous_cmd_time = time()

if __name__ == '__main__':
	rospy.init_node('serial_controller')
	controller = SerialControl()
	while not rospy.is_shutdown():
		controller.read()
