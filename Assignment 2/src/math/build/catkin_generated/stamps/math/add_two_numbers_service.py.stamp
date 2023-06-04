#!/usr/bin/env python3
from __future__ import print_function
import rospy
from math.srv import AddTwoInts, AddTwoIntsResponse
def handle_add_two_numbers(req):
    sum = req.a + req.b
    rospy.loginfo("Received numbers: %d, %d. Returning sum: %d", req.a, req.b, sum)
    return AddTwoIntsResponse(sum)
def add_two_ints():
    rospy.init_node('add_two_numbers_service')
    rospy.Service('add_two_numbers', AddTwoInts, handle_add_two_numbers)
    rospy.spin()
if __name__ == "__main__":
    add_two_ints()