#!/usr/bin/bash

#dodanie repo gz
sudo apt update
sudo apt install -y curl gnupg lsb-release

#dodanie klucza gpg
sudo curl -fsSL https://packages.osrfoundation.org/gazebo.gpg \
  -o /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
sudo apt update

#instalka gz
sudo apt install -y gz-harmonic
