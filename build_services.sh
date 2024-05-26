#!/bin/bash

if [ ! -f "Ground_Station/web/frontend/.env" ]; then
  echo "Error: .env for the frontend does not exist. Please create ./Ground_Station/web/frontend/.env containing VITE_BACKEND=192.168.0.101:80. Exiting."
  exit 1
fi

docker build -t ground_station ./Ground_Station
docker build -t ground_station_bridge ./Ground_Station_Bridge

docker run --restart unless-stopped -d --network host -v /tmp/:/tmp/ ground_station_bridge

sleep 8  # strangely it won't work otherwise 

docker run --restart unless-stopped -d -p 80:3000 -v /tmp/:/tmp/ ground_station
