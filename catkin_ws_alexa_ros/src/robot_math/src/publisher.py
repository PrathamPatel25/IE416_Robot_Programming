#!/usr/bin/env python3

# IE416 my first ROS

import rospy
from std_msgs.msg import String

def hello_world_pub():
    rospy.init_node('hello_world_pub_node')
    pub = rospy.Publisher('hello_world', String, queue_size=10)
    rate = rospy.Rate(10) # 10hz
    
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()

if __name__ == '__main__':
    try:
        hello_world_pub()
    except rospy.ROSInterruptException:
        pass
