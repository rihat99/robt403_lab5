# robt403_lab5
Source code for the laboratory session 5 of the ROBT403 course

This code has been tested on ROS Melodic

## Install dependicies
  1) git clone https://github.com/arebgun/dynamixel_motor
  2) git clone https://github.com/KNurlanZ/snake-noetic.git
  
## Compile
  1) source /opt/ros/melodic/setup.bash
  2) source ~/CATKIN_WORKSPACE/devel/setup.bash
  3) catkin_make
  
## Run
  1) roslaunch snake_moveit_config moveit_gazebo.launch
  2) roslaunch snake_moveit_config moveit_planing_execution.launch 
  3) rosrun snake_move step
  
## Save data
  1) rosbag record /joint_states /end_joint_x /end_joint_y
  2) rostopic echo -b 2022-10-09-19-41-37.bag -p /joint_states > data_joint_states.csv
  3) rostopic echo -b 2022-10-09-19-41-37.bag -p /end_joint_x > data_end_x.csv
  4) rostopic echo -b 2022-10-09-19-41-37.bag -p /end_joint_y > data_end_y.csv

## Visualize data
  Run plot.m Matlab file
