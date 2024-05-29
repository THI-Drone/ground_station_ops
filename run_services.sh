#!/bin/bash

rm /tmp/thi_drone

docker run -d --rm -p 80:3000 -v /tmp/:/tmp/ ground_station

docker run -d --rm --network host -v /tmp/:/tmp/ ground_station_bridge 