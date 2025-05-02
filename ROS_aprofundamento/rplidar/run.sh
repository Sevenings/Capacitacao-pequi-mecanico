#!/usr/bin/env bash

# Configurar permissões X11 no host
xhost +local:docker

# Pega UID e GID do usuário atual
USER_ID=$(id -u)
GROUP_ID=$(id -g)

# Roda o container
docker run -it --rm \
  --network host \
  --env DISPLAY=$DISPLAY \
  --env QT_X11_NO_MITSHM=1 \
  --env XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
  --env LIBGL_ALWAYS_INDIRECT=0 \
  --volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
  --volume $HOME/.Xauthority:/root/.Xauthority:ro \
  --volume $XDG_RUNTIME_DIR:$XDG_RUNTIME_DIR \
  --device /dev/dri:/dev/dri \
  --device=/dev/ttyUSB0:/dev/ttyUSB0 \
  --name ros_noetic_container \
  ros_noetic
