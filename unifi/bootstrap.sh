#!/usr/bin/env bash

echo "deb https://www.ui.com/downloads/unifi/debian stable ubiquiti" | tee /etc/apt/sources.list.d/100-ubnt-unifi.list
apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50
apt-get update
apt-get install -y unifi
service unifi restart
