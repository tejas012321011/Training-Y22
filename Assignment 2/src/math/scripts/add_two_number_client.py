from __future__ import print_function

import sys
import rospy
from math.srv import AddTwoInts, AddTwoIntsResponse
from std_msgs.msg import Int32

def add_two_ints_client(x, y):
    rospy.wait_for_service('add_two_ints')
    try:
        add_two_ints = rospy.ServiceProxy('add_two_numbers_service', AddTwoInts)
        resp1 = add_two_ints(x, y)
        return resp1.sum
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [x y]"%sys.argv[0]

def client():
    while not rospy.is_shutdown():
        if len(sys.argv) == 1:
            x = num1
            y = num2
        else:
            print(usage())
            sys.exit(1)
        print("Requesting %s+%s"%(x, y))
        print("%s + %s = %s"%(x, y, add_two_ints_client(x, y)))
num1=num2=0
def callback1(data1):
    global num1
    num1=data1.data
    rospy.logininfo('Sum: %d',num1+num2)
def callback2(data2):
    global num2
    num2=data2.data2
def output():

    rospy.init_node('output_node')

    rospy.Subscriber('number1', Int32, callback1)
    rospy.Subscriber('number2', Int32, callback2)

    rospy.spin()
if __name__ == '__main__':
    output()
    client()

