FROM ros:humble

RUN apt update && apt install -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set up the ROS 2 workspace
WORKDIR /ros2_ws
COPY src/ src/
RUN . /opt/ros/humble/setup.sh && \
    colcon build

# Source the ROS 2 workspace
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
