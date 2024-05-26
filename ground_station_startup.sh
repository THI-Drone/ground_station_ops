#!/bin/bash

rm /tmp/thi_drone

docker run -d --network host -v /tmp/:/tmp/ ground_station_bridge

sleep 2  # strangely it won't work otherwise 

docker run -d -p 80:3000 -v /tmp/:/tmp/ ground_station