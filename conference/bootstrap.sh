#!/usr/bin/env bash

# Enable 32-bit architecture
dpkg --add-architecture i386
apt-get update

# WebEx
apt-get -y remove icedtea-7-plugin:i386 icedtea-7-plugin:i386 icedtea-netx:i386
apt-get -y install openjdk-8-jre:i386 libxmu6:i386 icedtea-8-plugin:i386 firefox:i386
update-alternatives --set mozilla-javaplugin.so /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/IcedTeaPlugin.so

# Chrome (for Flash)
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get update
apt-get install -y google-chrome-stable

# Upgrade
apt-get upgrade

# DKMS
dpkg-reconfigure virtualbox-guest-dkms
