FROM ros
RUN sudo apt update
RUN sudo apt install -y ros-jazzy-turtlesim
RUN sudo apt install -y '~nros-jazzy-rqt*'
