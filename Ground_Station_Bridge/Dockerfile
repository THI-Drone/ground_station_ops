FROM arm64v8/ros:humble

WORKDIR /ros2_ws

RUN apt-get update && apt-get upgrade -y

# To get the common_package building...
RUN apt-get install -y nlohmann-json3-dev

COPY ./src /ros2_ws/src

RUN . /opt/ros/humble/setup.sh && colcon build ${@} --symlink-install --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

# To get Python print in CLI
ENV PYTHONUNBUFFERED=1

# Start telemetry node 
ENTRYPOINT ["/bin/bash", "-c", "source install/setup.bash && ros2 run telemetry_package telemetry_node"]
