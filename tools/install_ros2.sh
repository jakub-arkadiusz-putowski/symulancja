#!/bin/bash

#zmienne w pamieci
UBUNTU_DISTRO="$(lsb_release -cs)"
ROS_DISTRO="humble"

#instalka ros2 na ub jammy
#jesli ubunciak nie jest jammy czyli 20.04 to sie wyykrzacza
if [ "$UBUNTU_DISTRO" != "jammy" ]; then
  echo "dupa zbita bo ub w distro $UBUNTU_DISTRO zamiast w jammy"
fi

#dodanie repo rosa2
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key \
  -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $UBUNTU_DISTRO main" | \
  sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

#instalka ros2
sudo apt update
sudo apt install -y \
  ros-$ROS_DISTRO-desktop \
  ros-dev-tools
