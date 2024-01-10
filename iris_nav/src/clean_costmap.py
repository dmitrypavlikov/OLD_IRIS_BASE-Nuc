#!/usr/bin/env python

import rospy
from std_srvs.srv import Empty

if __name__ == '__main__':
  rospy.init_node('clear_costmaps_client')
  rospy.wait_for_service('/move_base_node/clear_costmaps')
  clear = rospy.ServiceProxy('/move_base_node/clear_costmaps', Empty())
  while not rospy.is_shutdown():
    try:
      clear()
      rospy.loginfo('Clear_costmap_client: clear navigation costmaps successfully!')
    except:
      rospy.loginfo('Clear_costmap_client: clearing navigation costmaps faild!')
    rospy.sleep(1.5)
