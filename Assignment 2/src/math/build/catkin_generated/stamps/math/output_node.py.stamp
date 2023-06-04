#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32
num1=num2=0
def callback1(msg1):
    global num1
    num1=msg1.data
   
    
def callback2(msg2):
    global num2
    num2=msg2.data
    rospy.loginfo("Sum: %d",num2+num1) 

def output():

    rospy.init_node('output_node')

    rospy.Subscriber('n1', Int32, callback1)
    rospy.Subscriber('n2', Int32, callback2)

    rospy.spin()
if __name__ == '__main__':
    output()
    rospy.loginfo("Sum: %d",num1+num2) 