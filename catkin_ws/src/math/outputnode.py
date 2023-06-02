import rospy
import numpy as np
from std_msgs.msg import Int16

class Server:
    def __init__(self):
        self.num1 = None
        self.num2 = None
        self.sum12 = None

    def num1_callback(self, msg):
        # "Store" message received.
        self.num1 = msg.data

    def num2_callback(self, msg):
        # "Store" the message received.
        self.num2 = msg.data
        self.sum()

    def sum(self):
        if self.num1 is not None and self.num2 is not None:
            self.sum12 = self.num1 + self.num2
            rospy.loginfo(self.sum12)




def listener():

    rospy.init_node('output',anonymous=True)
    server = Server()
    rospy.Subscriber('Assignment1',Int16,callback=server.num1_callback)
    rospy.Subscriber('Assignment2',Int16,callback=server.num2_callback)

    rospy.spin()

publish_sum = rospy.Publisher('sum', Int16, queue_size=1)

if __name__=='__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass

