#!/usr/bin/env bash

echo "deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50
apt-get update
apt-get install -y unifi
service unifi restart
