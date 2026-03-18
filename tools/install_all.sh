#!/usr/bin/env bash

set -euo pipefail

REPO_NAME="symulancja"
REPO_BRANCH="main"
REPO_URL="https://github.com/jakub-arkadiusz-putowski/${REPO_NAME}.git"
INSTALL_DIR="${HOME}/${REPO_NAME}"

PX4_DIR="${INSTALL_DIR}/PX4-Autopilot"
PX4_REPO="https://github.com/PX4/PX4-Autopilot.git"

if [ ! -d "$INSTALL_DIR" ]; then
  git clone "$REPO_URL" "$INSTALL_DIR"
else
  cd "$INSTALL_DIR" && git pull origin main
fi

cd "$INSTALL_DIR"
chmod +x tools/*.sh

#instalowanie zaleznosci?
./tools/install_dependencies.sh
./tools/download_px4.sh
