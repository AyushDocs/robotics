# ROS 2 Humble Talker-Listener in Docker

This repository contains a simple ROS 2 Humble talker-listener application using Python and `rclpy`. The talker publishes messages to a topic, and the listener subscribes to that topic and prints the received messages. The entire setup runs inside a Docker container with a linked volume to the host machine.

---

## Directory Structure

```
ros2_ws/
│── Dockerfile
│── docker-compose.yml
│── entrypoint.sh
│── src/
│   ├── my_package/
│   │   ├── __init__.py
│   │   ├── package.xml
│   │   ├── setup.py
│   │   ├── setup.cfg
│   │   ├── resource/
│   │   │   ├── my_package
│   │   ├── my_package/
│   │   │   ├── __init__.py
│   │   │   ├── talker.py
│   │   │   ├── listener.py
│   ├── CMakeLists.txt
```

---

## Setup and Usage

### 1. Build the Docker Image
```sh
docker-compose build
```

### 2. Run the Container
```sh
docker-compose up -d
```

### 3. Open a Terminal Inside the Container
```sh
docker exec -it ros2_humble bash
```

### 4. Run the Talker Node
```sh
ros2 run my_package talker
```

### 5. Open Another Terminal and Run the Listener Node
```sh
ros2 run my_package listener
```

---

## Explanation
- The **talker** publishes messages to the `/chatter` topic.
- The **listener** subscribes to `/chatter` and prints received messages.
- The **Docker container** ensures the ROS 2 environment is correctly set up.
- **Volumes** link the workspace with the host machine for persistent development.

---

## Files Overview
- **Dockerfile**: Builds the ROS 2 Humble environment.
- **entrypoint.sh**: Ensures ROS 2 setup is sourced.
- **docker-compose.yml**: Defines the container and volume linking.
- **talker.py**: Publishes messages.
- **listener.py**: Subscribes and prints messages.
- **package.xml, setup.py**: Define the ROS 2 package.

---

## Stopping the Container
```sh
docker-compose down
```

---

## License
This project is licensed under the Apache-2.0 License.
