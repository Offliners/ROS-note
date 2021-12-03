#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from time import sleep

def talker_main():
    rospy.init_node('ros1_talker_node')
    pub = rospy.Publisher('/chatter', String)
    msg = String
    i = 0
    while not rospy.is_shutdown():
        msg.data = 'Hello World: %d' % i
        i += 1
        rospy.loginfo(msg.data)
        pub.publish(msg)
        sleep(0.5)

if __name__ == '__main__':
    talker_main()
