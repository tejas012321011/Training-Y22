#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64
count = 0
tup = ()
def callback(data):
	global count
	global tup
	rospy.loginfo(rospy.get_caller_id() + "I heard %s",data.data)
	sum = 0
	tup += (data.data,)
	count+=1
	if (count%2 == 0):
		sum = tup[count-1]+tup[count-2]
		rospy.loginfo("and their sum is: %s",sum)
	
def listener():
    
	# In ROS, nodes are uniquely named. If two nodes with the same
        # name are launched, the previous one is kicked off. The
        # anonymous=True flag means that rospy will choose a unique
        # name for our 'listener' node so that multiple listeners can
        # run simultaneously.
	rospy.init_node('output_node', anonymous=True)
	
	rospy.Subscriber('number_1', Int64, callback)
	rospy.Subscriber('number_2', Int64, callback)
	
   
	# spin() simply keeps python from exiting until this node is stopped
	rospy.spin()

if __name__ == '__main__':
	listener()
