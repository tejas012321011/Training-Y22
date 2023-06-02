#! usr/bin/env/python3
import rospy
import numpy as np
from std_msgs.msg import Int16

def add():
    rospy.init_node('input',anonymous=True)
    rospy.loginfo("node has started")
    pub1=rospy.Publisher('Assignment1',Int16,queue_size=1)
    pub2=rospy.Publisher('Assignment2',Int16,queue_size=1)
    rate=rospy.Rate(10)
    while not rospy.is_shutdown():
        a=int(np.random.random() * 100)
        b=int(np.random.random() * 100)
        pub1.publish(a)
        pub2.publish(b)
        rate.sleep()

if __name__=='__main__':
    try:
        add()
    except rospy.ROSInterruptException:
        pass