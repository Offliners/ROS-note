# Setup your sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' 

# sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -Set up your keys

# Installation
sudo apt-get install python-pip
sudo apt-get install rosdep
sudo apt update
sudo apt install ros-melodic-desktop-full

# Environment setup
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
source /opt/ros/melodic/setup.bash

# Dependencies for building packages
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential python-roslaunch
sudo rosdep init
rosdep update

# Tools
sudo apt-get install ros-melodic-ros-control
sudo apt-get install ros-melodic-ros-controllers
sudo apt-get install ros-melodic-gazebo-ros-control
sudo apt install ros-melodic-joint-state-publisher-gui
