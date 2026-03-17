#!/bin/bash

#download_px4.sh
#git clone https://github.com/PX4/PX4-Autopilot.git

#instalka px4
REPO_URL="https://github.com/PX4/PX4-Autopilot.git"
TARGET_DIR="PX4-Autopilot"



if [ -d "$TARGET_DIR" ]; then
  echo "'$TARGET_DIR' juz istnieje"
else
  echo "instalka '$TARGET_DIR'"
  git clone "$REPO_URL" "$TARGET_DIR"
  echo "repo px4 siedzi w '$TARGET_DIR'"
fi
