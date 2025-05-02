#!/usr/bin/env bash

# no host:
xhost +si:localuser:root

# no container:
docker run -it --rm \
  --network host \
  --env DISPLAY=$DISPLAY \
  --env XAUTHORITY=/root/.Xauthority \
  --env QT_X11_NO_MITSHM=1 \
  --env XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
  --env LIBGL_ALWAYS_INDIRECT=1 \
  --volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
  --volume $HOME/.Xauthority:/root/.Xauthority:ro \
  --volume $XDG_RUNTIME_DIR:$XDG_RUNTIME_DIR \
  --volume $PWD/ros_ws:/root/ros_ws \
  --device /dev/dri:/dev/dri \
  --name ros_jazzy_container \
  ros_jazzy
