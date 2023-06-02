#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int32
import random

def input_node():
    rospy.init_node('input_node')

    pub1 = rospy.Publisher('number1',Int32,queue_size=10)
    pub2 = rospy.Publisher('number2',Int32,queue_size=10)
    rate = rospy.Rate(0.2)

    while not rospy.is_shutdown():
        num1 = random.randint(1,10)
        num2 = random.randint(1,10)

        pub1.publish(num1)
        pub2.publish(num2)

        rospy.loginfo("Published numbers: %d, %d",num1,num2)
        rate.sleep()
if __name__=='__main__':
    try:
        input_node()
    except rospy.ROSInterruptException:
        pass