# Symulancja
docelowo jest utworzenie repo w ktorym poprzez odpowiedni link mozna wykonc:
za pomoca jednej komendy
1. instalacje calego pakietu px4 ros2 i gazebo
2. uruchomienie calego srodowiska i symulcji

coś jak w teorii
https://raw.githubusercontent.com/jakub-arkadiusz-putowski/symulancja/INSTALKA???
https://raw.githubusercontent.com/jakub-arkadiusz-putowski/symulancja/INIT_SIM???

## Target srodowisk
-ub22.04
-ros2 humble
-gz harmonic
-px4 autopilot

## GOTOWE
- download_px4.sh
- 
## DO ZROBIENIA
-

## PO CO TO JEST?
- do zainstalowania na raz ros2 gazebo i px4
- do odpalenia gotowej symulacji pokazowej gz_x500

  
## usage
execute in order kurwa mac:
```bash
chmox +x tools/*.sh

./tools/install_ros2.sh
./tools/install_gazebo.sh
./tools/download_px4.sh
./tools/setup_px4.sh
./tools/run_px4_sitl.sh
```

### Docs
dokumentacja calej pracy

- PX4 Gazebo sim: https://docs.px4.io/main/en/sim_gazebo_gz/
- PX4 ROS2 guide: https://docs.px4.io/main/en/ros2/
- PX4 Autopilot repo: https://github.com/PX4/PX4-Autopilot
- ROS2 humble: https://docs.ros.org/en/humble/index.html
- Gazebo: https://gazebosim.org/docs

(uzupelnij dziadu)

### execute stare teraz jest usage
git clone https://github.com/PX4/PX4-Autopilot.git
cd PX4-Autopilot
make px4-sitl

quadrotor: make px4-sitl gz_x500
vtol: make px4-sitl gz_standard_vtol
plane: make px4-sitl gz_rc_cessna

Dron z kamerą
```
make px4_sitl gz_x500_depth_baylands
```
