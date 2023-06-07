#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64
import random

#input_node

#topic_1 
def talker():
	publisher = rospy.Publisher('number_1',Int64,queue_size = 10)
	rospy.init_node('input_node', anonymous =True)
	
	publisher2 = rospy.Publisher('number_2',Int64,queue_size = 10)
	rospy.init_node('input_node', anonymous =True)
	
	rate = rospy.Rate(10)
	num1 = random.randint(1,100)
	num2 = random.randint(1,100)
	
	for i in range(1000):

		rospy.loginfo(num1)
		publisher.publish(num1)
		
		rospy.loginfo(num2)
		publisher2.publish(num2)
		rate.sleep()
		
if __name__ == '__main__':

	try:
		talker()
	except rospy.ROSInterruptException:
		pass
