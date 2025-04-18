#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    
def my_subscribe():

    # run simultaneously.
    rospy.init_node('hello_world_sub_node: ')
    rospy.Subscriber("hello_world", String, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    my_subscribe()

