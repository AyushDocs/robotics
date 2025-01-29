#!/bin/bash
set -e

# Source the ROS 2 setup script
source /opt/ros/humble/setup.bash
source /ros2_ws/install/setup.bash

exec "$@"
