FROM osrf/ros:humble-desktop

SHELL [ "/bin/bash" ,"-c"]

WORKDIR "/app"

COPY src workspace/src

RUN cd workspace && \
    source /opt/ros/humble/setup.bash && \
    colcon build

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]

CMD ["bash"]