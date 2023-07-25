# Training-Y22

This is the repoitory for assignment submission of Software Subsystem of Team AUV-IITK

### Assignment 1: Bandit Wargame Assignment
----------------------------------------------------------------------
<b>Compulsory for <u>ALL</u> subsystems</b>
 You are required to complete the [bandit wargame](https://overthewire.org/wargames/bandit/) till level 15. This assignment will get you accustomed with CLI interface and the usage of basic bash commands.
 
 #### Steps to follow to make the submission: 
- Fork this repository
- Make a folder titled "[Name]_[Roll No.]" 
- Make a markdown file (Readme.md/Submission.md) and list down the steps documented by you for the levels
- Create a PR to make the submission.

#### Note:
- You may use the internet to understand the required commands and concepts.
- Make sure to properly document your steps for each level in the README.md file.
- Be sure to give a proper **Title** to your PR. (The title of PR should be "[Assignment **#** Submission]\_[Name]\_[Roll Number]\_[Subsystem]")<br>
An example submission can have the title "Assignment 1 Submission\_Tejas Gupta\_211107\_Software"
- If you encounter any issues or have questions, feel free to ask for assistance.

Please let me know if you need further clarification

Some useful resources :
- Guide to markdown file syntax - [Link](https://www.markdownguide.org/basic-syntax/)

#### Deadline: 18 May 2023, 23:59:59 IST (Not extendable !!)


## Software Subsystem Assignments:
These assignemnts are compulsory for the junior team members in software subsystem or those who would like to shift there subsystem. Though the first assignment is recommended for all.
### Contents 
- [Assignment 1](assignment-1-ros-basics)
- [Assignment 2](assignment-2-mapping-and-simulation)
### Assignment 1 ROS Basics
------------------------------------------------------------------------------------------------------
#### Prerequisites:
- Basic knowledge of version control and md file syntax
- Basic knowledge of bash scripting

#### Aim: 
Understanding basic concepts related to ROS: nodes, topics, publishers, subscribers, messages and packages
#### Deadline:
31st May, 2023
#### Submission Format: 
- Create a Pull Request against the Submission branch
- Your submission should contain your source (src) folder from your workspace and a markdown file explaining all the procedures to code in detail

#### Tasks:
- Create a catkin workspace for doing your assignments.
- Create a package titles ***math*** in that workspace.
- Implement two ROS nodes within the "math" package:
    - Node 1: input_node
        - Create two ROS topics.
        - Publish two numbers (preferably random) on the topics.
    - Node 2: output_node
        - Subscribe to the topics published by input_node.
        - Calculate the sum of the two numbers.
    - Publish the sum on a separate topic.
        - Create a ROS service named "add_two_numbers".
        - The service should accept two numbers from the topics published by input_node.
        - The service should return the sum of the two numbers.  
  
#### Resources: 
Start with the official ROS tutorials [here](http://wiki.ros.org/ROS/Tutorials); Do note Intermediate ones are also compulsory.Other resources will be posted as required



### Assignment 2 Mapping and Simulation
----------------------------------------------------------------------

#### Aim: 
Understanding mapping and simulating the world.

#### Deadline:
31st July, 2023

#### Submission Format:
- Create a pull request (new) against the `submission` branch.
- Your PR should contain the `src` folder from the workspace.
- Your PR should contain the `README.md` file with all the details about how to run your code and the procedure you followed.
- A **screen recording** of the simulation is required (upload it on youtube and add the link in the README). 


#### Task:

Create a new package named `demo-gazebo`. Learn about how to create world files, and create one in the package. 

a. Customize it as per your choice with the following requirements:
- A model from the default gazebo library ex: postbox.
- A custom model outside the gazebo library.
- An additional source of light
- A custom physics solver 

b. Write a launch file to visualize/load this world in the simulation environment. The launch file goes into the launch folder.

c. Learn about Robot Modelling, explicitly URDF and XACRO. 
- Create a robot using the URDF file. (You are free to refer from the internet for this one).
- To move the robot use the differential drive plugin. Configure it to move your robot.
- Spawn the robot in the world you had created and try moving it from the terminal.
- Learn about teleop key package. Use it to drive your robot.

#### Useful Resources: 

[Lauch files](http://gazebosim.org/tutorials?tut=ros_roslaunch), [Physics engine](https://gazebosim.org/tutorials?tut=physics_params&cat=physics)

--------------------------------------------------------------------------------------

#### Bonus Assignments: Coming Soon !!


