# Symulancja

## Target srodowisk
-ub22.04
-ros2 humble
-gz harmonic
-px4 autopilot

## available tools ze to co jest zrobione
- `tools/download_px4.sh` – clone PX4 source code
- `tools/install_ros2.sh`
- itd itd itd do zrobienia duperele poki co nie istotne

## usage
execute in order kurwa mac:
```bash
chmox +x tools/*.sh

./tools/install_ros2.sh
./tools/install_gazebo.sh
./tools/download_px4.sh
./tools/setup_px4.sh
./tools/run_px4_sitl.sh


### Docs
https://docs.px4.io/main/en/sim_gazebo_gz/
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
