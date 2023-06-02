#!/usr/bin/env python

from __future__ import print_function
import rospy
from std_msgs.msg import Int16
from math.srv import AddTwoInts, AddTwoIntsResponse

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
            handle_add_two_ints(self)  # Call the service handler function


def handle_add_two_ints(req):
    response = AddTwoIntsResponse()
    response.sum = req.num1 + req.num2
    pub_sum.publish(response.sum)
    print("Returning [%s + %s = %s]" % (req.num1, req.num2, response.sum))
    return response


def listener():
    rospy.init_node('service_output', anonymous=True)
    server = Server()
    rospy.Subscriber('Assignment1', Int16, callback=server.num1_callback)
    rospy.Subscriber('Assignment2', Int16, callback=server.num2_callback)
    rospy.Service('add_two_ints', AddTwoInts, handle_add_two_ints)
    rospy.spin()


pub_sum = rospy.Publisher('sum', Int16, queue_size=1)

if __name__ == "__main__":
    try:
        listener()
    except rospy.ROSInterruptException:
        pass