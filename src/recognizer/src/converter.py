#!/usr/bin/env python
from __future__ import print_function
import math
import numpy as np
import roslib
import sys
import rospy
import cv2
from std_msgs.msg import String
from sensor_msgs.msg import Image
from geometry_msgs.msg import Vector3
from cv_bridge import CvBridge, CvBridgeError

class image_converter:

  def __init__(self):
    self.vector=Vector3()
    self.vectorout=Vector3()
    self.image_pub = rospy.Publisher("Manip/Coordinates",Vector3,queue_size=10)
    self.x = 0
    self.y = 0
    self.width=640
    self.height =480
    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber("/object_centre",Vector3,self.callbackxy)
    self.image_sub = rospy.Subscriber("/camera/depth_registered/image_raw",Image,self.callback)

  def callbackxy(self,data):
    self.vector.x=data.x
    self.vector.y=data.y
  def callback(self,data):
    try:
      depth_image = self.bridge.imgmsg_to_cv2(data, "32FC1")
    except CvBridgeError as e:
      print(e)
    depth_array = np.array(depth_image, dtype=np.float32)

    (rows,cols) = depth_image.shape
    self.x=self.vector.x 
    self.y=self.vector.y
    realX, realY =self.getXYZ(depth_array,rows,cols,self.x,self.y)
    #print (realX)
    self.vectorout.x = realX
    self.vectorout.y = realY
    self.vectorout.z = depth_array[self.y,self.x]
    #print (realY)
    #print (depth_array[self.y,self.x])
    #print("_____")
    try:
      self.image_pub.publish(self.vectorout)
    except CvBridgeError as e:
      print(e)

  def getXYZ (self,depth_array,rows,cols,x,y):
    gamma=math.pi/3 + (self.width - x) *(math.pi/3)/self.width
    beta=2*math.pi-0.8639/2 + y*0.8639/self.height
    if not (math.isnan(depth_array[y,x])):
        if (x!=320):
            realX = -(depth_array[y,x]/math.tan(gamma))
        else:
            realX=0

        if (y!=240):
            realY =depth_array[y,x]*math.tan(beta)
            math.tan(beta)
    
        else:
            realY=0
    else:
        realX=0
        realY=0
    #cv2.imshow("Image windo
    
    
    # w", cv_image)
    #cv2.waitKey(3)
    
    return realX, realY
def main(args):
  ic = image_converter()
  rospy.init_node('image_converter', anonymous=True)
  try:
    rospy.spin()
  except KeyboardInterrupt:
    print("Shutting down")
  cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)
