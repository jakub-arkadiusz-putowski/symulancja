#!/usr/bin/env bash
set -euo pipefail


## INSTALACJA ROSA2 z docsow
# ros2 humble
# https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debs.html

sudo apt update
sudo apt install -y locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

## SETUP SOURCES
sudo apt install -y software-properties-common curl gnupg2 lsb-release

# dodanie repo ros2
sudo add-apt-repository universe -y
sudo apt update

# pobranie najnowszego ros2 apt source
ROS_APT_SOURCE_VERSION=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest \
    | grep -F "tag_name" | awk -F'"' '{print $4}')

UBUNTU_CODENAME=$(. /etc/os-release && echo ${UBUNTU_CODENAME:-${VERSION_CODENAME}})
curl -L -o /tmp/ros2-apt-source.deb \
    "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ROS_APT_SOURCE_VERSION}/ros2-apt-source_${ROS_APT_SOURCE_VERSION}.${UBUNTU_CODENAME}_all.deb"

sudo dpkg -i /tmp/ros2-apt-source.deb


## INSTALKA ZALEZNOSCI ROS2
# instalacja ROS z RViz, demkami i tutorialami
# instalka narzedzi deweloperskich
sudo apt update
sudo apt upgrade -y
sudo apt install -y ros-humble-ros-base ros-dev-tools

## CONFIG SRODOWISKA
if ! grep -Fxq "source /opt/ros/humble/setup.bash" ~/.bashrc; then
    echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
fi
source /opt/ros/humble/setup.bash
