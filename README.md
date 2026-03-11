# Symulancja

### Docs

https://docs.px4.io/main/en/sim_gazebo_gz/

### execute
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
