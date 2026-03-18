#!usr/bin/env bash
set -euo pipefail

#instalka px4
PX4_DIR="$HOME/symulancja/PX4-Autopilot"
PX4_URL="https://github.com/PX4/PX4-Autopilot.git"

if [ ! -d "$PX4_DIR" ]; then
  git clone "$PX4_URL" --branch v1.14.3 --recursive "$PX4_DIR"
fi
