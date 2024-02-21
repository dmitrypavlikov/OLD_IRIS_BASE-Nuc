#!/usr/bin/env python

import rospy
import numpy as np
from sensor_msgs.msg import LaserScan 

rescan = LaserScan()
pub = rospy.Publisher('rescan', LaserScan, queue_size=10)

def rescan_cb(data):
	rescan = data
	rescan_ranges = np.array(data.ranges, dtype=np.float32)
	rescan_intensities = np.array(data.intensities, dtype=np.float32)
	for i in range(0, 80):
		rescan_ranges[i] = 0.0
		rescan_intensities[i] = 0.0
	for i in range(280, 360):
		rescan_ranges[i] = 0.0
		rescan_intensities[i] = 0.0
	rescan.ranges = rescan_ranges
	rescan.intensities = rescan_intensities
	pub.publish(rescan)
		

if __name__ == '__main__':
	rospy.init_node('rescan_node')
	rospy.Subscriber("scan", LaserScan, rescan_cb)
	rate = rospy.Rate(15.0)
	while not rospy.is_shutdown():
		rate.sleep()
