#!/usr/bin/env bash
set -euo pipefail


## INSTALACJA gazebo z docsow
# gz source install
# https://gazebosim.org/api/sim/9/install.html

sudo apt update
sudo apt install -y build-essential cmake git gnupg2 lsb-release wget curl

# dodanie repo gz
wget -O /usr/share/keyrings/gazebo-archive-keyring.gpg http://packages.osrfoundation.org/gazebo.key
echo "deb [signed-by=/usr/share/keyrings/gazebo-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" \
    | sudo tee /etc/apt/sources.list.d/gazebo-stable.list

sudo apt update
sudo apt install -y gazebo9 libgazebo9-dev

GZ_DIR="$HOME/symulancja/gz-sim9"
if [ ! -d "$GZ_DIR" ]; then
    git clone -b gz-sim9 https://github.com/gazebosim/gz-sim.git "$GZ_DIR"
else
    echo "gz-sim już istnieje, wykonuję pull..."
    cd "$GZ_DIR" && git pull origin gz-sim9
fi

cd "$GZ_DIR"
pkg_files=$(find . -iname "packages-$(lsb_release -cs).apt" -o -iname "packages.apt")
if [ -n "$pkg_files" ]; then
    echo "Instalacja zależności Gazebo z plików .apt..."
    sudo apt install -y $(sort -u $pkg_files)
fi


# budowanie gz z source
mkdir -p build
cd build
cmake ../ -DCMAKE_BUILD_TYPE=Release
make -j$(nproc)
sudo make install
