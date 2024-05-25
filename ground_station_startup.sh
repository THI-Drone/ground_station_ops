#!/bin/bash

rm /tmp/thi_drone

docker run -d --restart unless-stopped --network host -v /tmp/:/tmp/ ground_station_bridge

docker run -d -p 80:3000 -v /tmp/:/tmp/ --restart unless-stopped ground_station