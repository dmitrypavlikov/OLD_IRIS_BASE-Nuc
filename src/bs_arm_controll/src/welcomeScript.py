#!/usr/bin/env python
import rospy
from std_msgs.msg import String, Bool

reachingPoint = Bool()
welcome = Bool()
pointPub = rospy.Publisher('/arm/cmd_arm_bs',String,queue_size=1)

def UpdateReachingPoint(msg):
    global reachingPoint
    reachingPoint.data = msg.data

def UpdateWelcome(msg):
    global welcome
    welcome.data = msg.data

def Checking(msg):
    global reachingPoint
    pointPub.publish(msg)
    rospy.sleep(0.7)
    while(not reachingPoint):
        continue

def MainStartWelcome():
    global welcome
    msgPoint = String()
    while not rospy.is_shutdown():
        while (welcome.data):
            msgPoint.data = 'r -250 -250 118 0'
            Checking(msgPoint)
            msgPoint.data = 'r -150 -350 118 0'
            Checking(msgPoint)

            msgPoint.data = 'r 170 -280 130 0'
            Checking(msgPoint)
            rospy.sleep(0.5)

            msgPoint.data = 'r 170 -180 300 0.3'
            Checking(msgPoint)
            msgPoint.data = 'r 170 -280 130 0'
            Checking(msgPoint)
            rospy.sleep(0.5)

            msgPoint.data = 'r 170 -180 300 0.3'
            Checking(msgPoint)
            msgPoint.data = 'r 170 -280 130 0'
            Checking(msgPoint)
            rospy.sleep(0.5)

            msgPoint.data = 'r 170 -180 300 0.3'
            Checking(msgPoint)
            msgPoint.data = 'r 170 -280 130 0'
            Checking(msgPoint)
            rospy.sleep(0.5)

            msgPoint.data = 'r -150 -350 118 0'
            Checking(msgPoint)
            msgPoint.data = 'r -250 -250 118 0'
            Checking(msgPoint)
            msgPoint.data = 'r -405 0 118 0'
            Checking(msgPoint)


if __name__ == '__main__':
    global reachingPoint,welcome
    rospy.init_node('Welcome node',anonymous=True)
    rospy.loginfo('Wellcome node was started')
    reachingPoint.data = False
    welcome.data = False
    rospy.Subscriber('/arm/welcome', Bool, UpdateWelcome)
    rospy.Subscriber('/arm/reaching_point', Bool,UpdateReachingPoint)
    MainStartWelcome()
    rospy.spin()