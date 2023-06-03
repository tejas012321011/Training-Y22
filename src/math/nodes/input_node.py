import rospy
from std_msgs.msg import Int32

rospy.init_node('input_node')

pub1 = rospy.Publisher('number1', Int32, queue_size=10)
pub2 = rospy.Publisher('number2', Int32, queue_size=10)

rate = rospy.Rate(1)  # Publish rate in Hz

while not rospy.is_shutdown():
    number1 = 42  # Replace with your random number generation logic
    number2 = 17  # Replace with your random number generation logic

    pub1.publish(number1)
    pub2.publish(number2)

    rate.sleep()
