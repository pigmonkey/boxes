#!/usr/bin/env bash

# Enable 32-bit architecture
dpkg --add-architecture i386
apt-get update

# Install i386 deps
apt-get -y install libstdc++6:i386 libgtk2.0-0:i386 

# Upgrade
apt-get upgrade

