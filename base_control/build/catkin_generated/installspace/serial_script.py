#!/usr/bin python

import rospy
import serial
import struct
from sensor_msgs.msg import JointState, Imu
from std_msgs.msg import Header
from time import sleep, time
from geometry_msgs.msg import Twist
from std_msgs.msg import UInt32MultiArray, Float32

class SerialControl():
	def __init__(self):
		self.ser = serial.Serial('/dev/ttyUSB0', 115200 ,timeout=0.1)
		#self.line = []
		#self.jointstate = JointState()
		#self.num_of_wheels = 2
		#self.jointstate.header.frame_id = 'base_link'
        # for i in range(0, self.num_of_wheels):
        #             self.jointstate.name.append("motor_"+str(i+1))
        #             self.jointstate.position.append(0)
        #             self.jointstate.effort.append(0)
        #             self.jointstate.velocity.append(0)
		# self.array_msg = UInt32MultiArray()
		self.imu = Imu()
        self.imu.header.frame_id = "imu"
		self.sub_cmd = rospy.Subscriber("cmd_vel", Twist, self.cmd_cb)
        #self.js_pub = rospy.Publisher('joint_state', JointState, queue_size=1)

    #def read(self):

    def cmd_cb(self, data):
        if(float(time() - self.previous_cmd_time) > 0.12):
			string = str(data.linear.x)  + "," + str(data.angular.z) + "\n"
			self.ser.write(string.encode())
			self.previous_cmd_time = time()

if __name__ == '__main__':
	rospy.init_node('serial_controller')
	controller = SerialControl()
    while not rospy.is_shutdown():
        pass
