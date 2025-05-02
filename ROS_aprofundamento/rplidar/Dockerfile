FROM osrf/ros:noetic-desktop-full

RUN apt update
RUN apt install -y neovim git \
    mesa-utils \
    libgl1-mesa-glx \
    libgl1-mesa-dri \
    x11-xserver-utils \
    xauth \
    libglu1-mesa

COPY catkin_ws /catkin_ws
COPY --chmod=744 docker/on_container_run.sh run.sh

CMD [ "./run.sh" ]

