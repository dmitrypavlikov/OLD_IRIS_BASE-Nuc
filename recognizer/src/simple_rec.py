#!/usr/bin/env python
import roslib
import sys
import rospy
import cv2
from std_msgs.msg import String
from sensor_msgs.msg import Image
from geometry_msgs.msg import Vector3
from cv_bridge import CvBridge, CvBridgeError
from dynamic_reconfigure.server import Server
from recognizer.cfg import CamConfig
class image_converter:

	def __init__(self):
		self.image_pub = rospy.Publisher("image_topic",Image, queue_size = 10)
		self.pose_pub = rospy.Publisher("object_centre",Vector3, queue_size = 10)
		self.maxb = 255
		self.maxg = 255
		self.maxr = 255
		self.minb = 0
		self.ming = 0
		self.minr = 0
		self.bridge = CvBridge()
		self.image_sub = rospy.Subscriber("/camera/rgb/image_raw",Image,self.callback)
		self.srv = Server(CamConfig, self.read_param)
	def read_param(self, config, level):
		try:
			self.maxb = config["maxb"]
			self.maxg = config["maxg"]
			self.maxr = config["maxr"]
			self.minb = config["minb"]
			self.ming = config["ming"]
			self.minr = config["minr"]
			if self.maxb == self.maxg == self.maxr:
				self.maxb = 255
				self.maxg = 255
				self.maxr = 255
		except Exception as e:
			print (e)
		return config
	
	def callback(self,data):
		try:
			cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
		except CvBridgeError as e:
			print(e)
		cv_image = cv2.GaussianBlur(cv_image,(5,5),0)
		image_binary = self.binar(cv_image) 
		# cv_image = cv2.cvtColor(cv_image, cv2.COLOR_BGR2HSV)
		# cv_image = cv2.bitwise_and(cv_image,cv_image, mask = image_binary)
		center = self.find_object(image_binary)
		if center:
			x = int(center[0])
			y = int(center[1])
			r = int(center[2])
			cv_image = cv2.rectangle(cv_image, (x + r/2, y - r), (x - r/2, y + r), (255,0,0), 2)
			font                   = cv2.FONT_HERSHEY_SIMPLEX
			bottomLeftCornerOfText = (x-r/2,y-r)
			fontScale              = 1
			fontColor              = (255,255,255)
			lineType               = 2
			cv2.putText(cv_image,'cola', bottomLeftCornerOfText, font, fontScale,fontColor,lineType)
		try:
			self.image_pub.publish(self.bridge.cv2_to_imgmsg(cv_image, "bgr8"))
		except CvBridgeError as e:
			print(e)
	def binar(self, image):
		image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
		image = cv2.inRange(image, (self.minb, self.ming, self.minr), (self.maxb, self.maxg, self.maxr))
		image = cv2.erode(image,None,iterations=2)
		image = cv2.dilate(image,None,iterations=3)
		return image
	def find_object(self,image):
		contours = cv2.findContours(image, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
		contours = contours[1]
		if len(contours):
			contours = sorted(contours, key=cv2.contourArea, reverse=True)
			cv2.drawContours(image, contours, 0, (255, 0, 255), 3)
			(x, y), radius = cv2.minEnclosingCircle(contours[0])
			center = (x,y,radius)
			msg = Vector3()
			msg.x = x
			msg.y = y
			self.pose_pub.publish(msg)
			print center
			return center
def main(args):
	rospy.init_node('image_converter', anonymous=True)
	ic = image_converter()
	try:
		rospy.spin()
	except KeyboardInterrupt:
		print("Shutting down")
		cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)
