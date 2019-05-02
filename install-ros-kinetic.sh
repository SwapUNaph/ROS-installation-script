#!/bin/bash

# Author: Swapneel Naphade
# Date: 4/19/2019
# Usage: Run this script to install ROS melodic full desktop version on your Linux Machine.

# Update lists
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list';
echo "-----------------------------------------";
echo "|         ... Lists updated ...         |";
echo "-----------------------------------------";

# Setup Environment keys
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116;
echo "-----------------------------------------";
echo "|     ... Environment Keys setup ...    |";
echo "-----------------------------------------";

# Update
apt update;
echo "-----------------------------------------";
echo "|        ... System updated ...         |";
echo "-----------------------------------------";

# Install ros-melodic full desktop version
apt install ros-kinetic-desktop-full -y;
echo "-----------------------------------------";
echo "|  ... ROS installed successfully ...   |";
echo "-----------------------------------------";

# Setup rosdep
rosdep init;
rosdep update;
echo "-------------------------------------------";
echo "| Successfully installed ros dependencies |";
echo "-------------------------------------------";

# Source setup.bash
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc;
source ~/.bashrc;
echo "-----------------------------------------";
echo "| ... Sourced the setup.bash script...  |";
echo "-----------------------------------------";

# Install build dependencies
apt install python-rosinstall python-rosinstall-generator python-wstool build-essential -y;
echo "---------------------------------------------";
echo "| Successfully installed build dependencies |";
echo "---------------------------------------------";

echo "------------------------------------------";
echo "---______--------______-------________----";
echo "   | ___ \------/  __  \-----/  ______|---";
echo "---| |_|  |-----| /  \ |-----| |______----";
echo "---| ___ /------| |  | |------\_____  \---";
echo "---| |--\ \-----| \__/ |------______| |---";
echo "---|_|---\_\----\______/-----|________/---";
echo "------------------------------------------";
echo "------------------------------------------";

