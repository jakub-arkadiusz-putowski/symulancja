#!/usr/bin/env bash
set -euo pipefail


## INSTALACJA ROSA2 z docsow
# ros2 humble
# https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debs.html

sudo apt update && sudo apt install -y locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

## SETUP SOURCES
sudo apt install software-properties-common
sudo add-apt-repository universe
sudo apt update && sudo apt install curl -y
export ROS_APT_SOURCE_VERSION=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest | grep -F "tag_name" | awk -F'"' '{print $4}')
curl -L -o /tmp/ros2-apt-source.deb "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ROS_APT_SOURCE_VERSION}/ros2-apt-source_${ROS_APT_SOURCE_VERSION}.$(. /etc/os-release && echo ${UBUNTU_CODENAME:-${VERSION_CODENAME}})_all.deb"
sudo dpkg -i /tmp/ros2-apt-source.deb

## INSTALACJA ZALEZNOSCI ROS2
sudo apt update
sudo apt upgrade

# instalacja ROS z RViz, demkami i tutorialami
# instalka narzedzi deweloperskich
sudo apt install ros-humble-ros-base
sudo apt install ros-dev-tools


## CONFIG SRODOWISKA
source /opt/ros/humble/setup.bash
