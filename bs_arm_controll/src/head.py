#!/usr/bin/env python
import roslib
import time
import rospy
from rns_msgs.msg import JointCmd
from std_msgs.msg import Bool

def hunt(data):
	cmd_joint_pub = rospy.Publisher('cmd_joints',JointCmd,queue_size = 1)
	jointcmd = JointCmd()
	if(data.data):
			
		jointcmd.cmd = 1700
		jointcmd.channel = 12
		cmd_joint_pub.publish(jointcmd)
		rospy.sleep(3.0)
		
		jointcmd.cmd = 2048
		jointcmd.channel = 12
		cmd_joint_pub.publish(jointcmd)
		rospy.sleep(2.0)

		jointcmd.cmd = 2400
		jointcmd.channel = 12
		cmd_joint_pub.publish(jointcmd)
		rospy.sleep(3.0)

		jointcmd.cmd = 2048
		jointcmd.channel = 12
		cmd_joint_pub.publish(jointcmd)
		rospy.sleep(2.0)


if __name__=='__main__':
    rospy.init_node('hunt',anonymous=True)
    print('Start hunting node')
    rospy.Subscriber("/arm/cmd_hunting", Bool, hunt)
    rospy.spin()

		
