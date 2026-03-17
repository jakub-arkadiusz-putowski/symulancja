#!/usr/bash

PX4_DIR="PX4-Autopilot"

#ni ma directory dla px4
if [ ! -d  "$PX4_DIR" ]; then
  echo "ni ma '$PX4_DIR'"
  exit 1
fi

#jest katalog px4
cd "$PX4_DIR"
echo "inicjalizacja px4 sitl gz dla modelu gz_x500"
make px4_sitl gz_x500
