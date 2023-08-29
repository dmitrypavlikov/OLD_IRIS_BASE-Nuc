#!/usr/bin/env python
import rospy
from std_msgs.msg import String, Bool
from sensor_msgs.msg import JointState
from LeftRoboticArmClass import LeftRoboticArm
from RightRoboticArmClass import RightRoboticArm
import math

currentJointState = JointState()
reachingPub = rospy.Publisher('/arm/reaching_point',Bool,queue_size=10)

def UpdateCurrentJointState(msg):
    global currentJointState
    currentJointState.position = msg.position[6:]

def ReachingOfThePoint(currentStateList,goalStatelList,error):
    reachingPoint = False
    if(math.fabs(currentStateList[0]-goalStatelList[0])<error and
       math.fabs(currentStateList[1]-goalStatelList[1])<error and
       math.fabs(currentStateList[2]-goalStatelList[2])<error):
       reachingPoint = True
    return reachingPoint

def ParseCmd(msgText):
    try:
        roll = 0
        msgList = msgText.split()
        arm = msgList[0]
        x = float(msgList[1])
        y = float(msgList[2])
        z = float(msgList[3])
        roll = float(msgList[4])
    except ValueError:
        rospy.logerr("Value Input Error")
    except IndexError:
        rospy.logerr("Index Input Error")
    return arm,x,y,z,roll

def ChangeOffset(solve,roll,roboticArm):
    position = []
    for i in range(3):
        position.append(solve[i+3]*roboticArm.motorSign[i]+ roboticArm.motorOffset[i])
    position.append(roll*roboticArm.motorSign[3]+ roboticArm.motorOffset[3])
    return position

def MainToPointCallback(msg):
    global currentJointState
    arm, x, y, z, roll = ParseCmd(msg.data)

    jointPub = rospy.Publisher("/arm/cmd_arm_in_rad", JointState, queue_size= 10)
    jointMsg = JointState()

    if(arm == 'l'):
        roboticArm = LeftRoboticArm()
    elif(arm == 'r'):
        roboticArm = RightRoboticArm()
    else:
        rospy.logerr('Unknown Device')
        return
    solve, err = roboticArm.SolveIP(x,y,z)
    if (type(solve) is int):
        rospy.loginfo('Point can\'t be reached' )
    else:
        rospy.loginfo('Point can be reached')
        jointMsg.name = [str(roboticArm.motorId[0]),str(roboticArm.motorId[1]),str(roboticArm.motorId[2]),str(roboticArm.motorId[3])]
        jointMsg.position = ChangeOffset(solve,roll,roboticArm)
        reaching = Bool()
        rate = rospy.Rate(10)
        while (not ReachingOfThePoint(currentJointState.position,[solve[3],solve[4],solve[5],roll],0.07)):
            rospy.loginfo('Wait...')
            reaching.data = False
            jointMsg.header.stamp = rospy.Time.now()
            jointPub.publish(jointMsg)
            reachingPub.publish(reaching)
            rate.sleep()
        reaching.data = True
        reachingPub.publish(reaching)
        rospy.loginfo('Well done')

if __name__ == '__main__':
    rospy.init_node('main_to_point_node',anonymous=True)
    rospy.Subscriber("/arm/cmd_arm_bs", String, MainToPointCallback)
    rospy.Subscriber('/joint_states',JointState,UpdateCurrentJointState)
    rospy.spin()