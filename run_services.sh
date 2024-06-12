#!/bin/bash

rm /tmp/thi_drone

docker run -d --rm -p 80:3000 -v /tmp/:/tmp/ ground_station

docker run -d --rm --network host -v /tmp/:/tmp/ ground_station_bridge /bin/bash -c "source install/setup.bash && ros2 run telemetry_package telemetry_node --ros-args -r __ns:=/uav_4"