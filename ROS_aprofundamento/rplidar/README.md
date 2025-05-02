# RP Lidar

Este repositório contém um módulo com um driver do RP LiDAR feita para o 
ROS, em que eu usei esse driver para ver as informações capturadas
pelo RP LiDAR no Rviz.

## Comandos

Buildar imagem Docker:
```
 make build
```
ou
```
 docker build -t ros_noetic .
```

Iniciar container:
```
make run
```
ou

```
./run.sh
```
Ao iniciar o container, o programa deve rodar automaticamente. 


Caso contrário, no container, inicie o programa:
```
./run.sh
```
ou
```
source catkin_ws/devel/setup.bash
roslaunch rplidar_ros view_rplidar_a1.launch
```

