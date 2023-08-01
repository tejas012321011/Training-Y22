#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32
from random import randint
def input():
    rospy.init_node('input_node')

    pub1 = rospy.Publisher('n1', Int32, queue_size=10)
    pub2 = rospy.Publisher('n2', Int32, queue_size=10)

    rate = rospy.Rate(0.5)  
    while not rospy.is_shutdown():
        n1 = randint(1, 1000)
        n2 = randint(1, 1000)
        pub1.publish(n1)
        pub2.publish(n2)
        rospy.loginfo("Published numbers: %d, %d", n1, n2)
        rate.sleep()
if __name__ == '__main__':
    try:
        input()
    except rospy.ROSInterruptException:
        pass
