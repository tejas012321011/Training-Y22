import rospy
from std_msgs.msg import Int32
from math.srv import AddTwoNumbers, AddTwoNumbersResponse

rospy.init_node('output_node')

sum_pub = rospy.Publisher('sum', Int32, queue_size=10)

def add_two_numbers(request):
    sum_result = request.number1 + request.number2

    sum_pub.publish(sum_result)

    return AddTwoNumbersResponse(sum_result)

rospy.Service('add_two_numbers', AddTwoNumbers, add_two_numbers)

rospy.spin()
