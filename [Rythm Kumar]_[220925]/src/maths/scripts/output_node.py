#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32

num1=num2=0
def callback1(data1):
    # Calculate the sum of the numbers
    global num1
    num1= data1.data 
    rospy.loginfo('Sum: %d', num1+num2)
def callback2(data2):
    global num2
    num2=data2.data

def output_node():
    rospy.init_node('output_node')
    
    # Subscribe to the topics published by input_node
    rospy.Subscriber('number1', Int32, callback1)
    rospy.Subscriber('number2', Int32, callback2)
    
    rospy.spin()

if __name__ == '__main__':
    output_node()
