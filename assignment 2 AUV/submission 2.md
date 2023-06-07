# documentation of Assignment 2 Software
## creating a catkin work sapce

step 1) googled what a catkin workspace is.

step 2) made a catkin worspace using catkin_make after maing a src and a devel directotry.

## Creating a package named 'math'

step 1) researched about differnet components like Package.xml, CMakeLists.txt and what is its function.

step 2) created a package using catkin_create_pkg command.

## Creating a node

### creating the input_node
step 1) Researched about what a node is.To simply put, a Node in ROS is an executable file coded in python or C++ or any other language.

step 2) Then googled about ros topics and messages.

step 3) created 2 topics 'number_1' and 'number_2' and published the 2 random numbers on their respective topics 

### creating the output_node

Almost similar to creating a input node but used a Subscriber to listen to the messages published by the input_node.

## A Major problem faced in the above process:

I didn't know that the .bashrc has to be changed so as to be able to run the nodes from any terminal.
After as little bit of google and help from Tejas [Thanks Tejas :)] I editd the .bashrc as:
	a) opened nano ~/.bashrc
	b) added : " ~/catkin_ws/devel/setup.bash "
	
## Creating a service

### Creating a ROS server:

step 1) A typical ROS server is again as executable file which accepts the client's requests and returns and output.

step 2) made a server using ros_Tutorials.srv and creating a AddTwoInts.srv inside a srv folder.

### Creating a ROS Client:

step 1) a Client requests the sum of 2 numbers from the server we defined above and prints the output returned by the server.

step 2) No need to define a node unlike the server's code, i just used the ROS tutorials page to make the client.

step 3) Also I subscribed to both the topics published by the input_node node using the client.

#Explaination of overall code:

1) Open 4 terminal tabs.
2) run roscore (master) in the first tab.
3) run add_two_ints_server in the second tab
4) run the input_node.py in the third tab which continuously prints 2 random numbers until the ROS is shutdown or in other words, until the node is closed.
5) run add_two_ints_clients.py in the fourth tab.

result : In the fourth tab, i.e the client's tab, The 2 numbers listened by the clients and their sum, is printed by the client.
