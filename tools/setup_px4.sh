#!/usr/bin/bash

PX4_DIR="PX4-Autopilot"

#ni ma katalogu
if [ ! -d "$PX4_DIR" ]; then
  echo "ni ma katalogu '$PX4_DIR'"
  echo "wykonaj ./tools/download_px4.sh"
  exit 1
fi

echo 
