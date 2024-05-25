#!/bin/bash

if [ ! -f "Ground_Station/web/frontend/.env" ]; then
  echo "Error: .env for the frontend does not exist. Please create ./Ground_Station/web/frontend/.env containing VITE_BACKEND=192.168.0.101:80. Exiting."
  exit 1
fi

docker build -t ground_station ./Ground_Station
docker build -t ground_station_bridge ./Ground_Station_Bridge
