# Ground Station Operations

This repository is meant as a merger for the _Ground Station_ and the _telemetry_package_ repository.
It also contains important information about the configuration and operation of the ground-station Raspberyy PI in this file.

# Ground Station Raspberry PI Configuration and Operation

- The Raspberry PI is expected to have the static IP _192.168.0.101_ in the ground station's client network.

- The script ground_station_startup.sh is expected to be executed on boot of the Raspberry PI, e.g. systemd.

- A docker image _ground_station_ (webserver) and an image _ground_station_bridge_ is expected by the ground\*station\*startup.sh script in order to correctly startup the ground-station. You can use the build_services.sh script to achieve this. ./Ground_Station/web/frontend/.env with VITE_BACKEND=192.168.0.101:80 has to be created!
