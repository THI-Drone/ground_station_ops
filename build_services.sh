#!/bin/bash

ENV_FILE="./Ground_Station/web/fronted/.env"

if [ ! -f "./Ground_Station/web/fronted/.env" ]; then
  echo "Error: .env for the frontend does not exist. Please create ./Ground_Station/web/frontend/.env containing VITE_BACKEND=192.168.0.101:80. Exiting."
  exit 1
fi

docker build -f ./Ground_Station/web/Dockerfile -t ground_station
docker build -f ./Ground_Station_Bridge/Dockerfile -t ground_station_bridge
