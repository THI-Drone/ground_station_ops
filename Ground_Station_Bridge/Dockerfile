FROM arm64v8/ros:humble

WORKDIR /ros2_ws

RUN apt-get update && apt-get upgrade -y

# To get the common_package building...
RUN apt-get install -y nlohmann-json3-dev

COPY ./src /ros2_ws/src

RUN . /opt/ros/humble/setup.sh && colcon build ${@} --symlink-install --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

# To get Python print in CLI
ENV PYTHONUNBUFFERED=1

# Create directory to store the bags only if it does not already exist 
RUN if [ ! -d "~/thi_drone_bags/" ]; then mkdir ~/thi_drone_bags/; fi 

# Set the name of the bag to timestamp at execution
ENV ROSBAG_NAME=$now

# Open another shell and start ros2 bag on it, saving the generated bag with the previously generated timestamp
RUN gnome-terminal --tab -- ros2 bag record -e uav_ -o $ROSBAG_NAME

# Start telemetry node 
ENTRYPOINT ["/bin/bash", "-c", "source install/setup.bash && ros2 run telemetry_package telemetry_node"]

