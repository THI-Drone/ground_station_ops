#!/bin/bash

rm /tmp/thi_drone

docker run --rm -d --network host -v /tmp/:/tmp/ ground_station_bridge

sleep 8  # strangely it won't work otherwise 

docker run --rm -d -p 80:3000 -v /tmp/:/tmp/ ground_station