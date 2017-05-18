#!/usr/bin/env bash

# WebEx
dpkg --add-architecture i386
apt-get update
apt-get -y remove icedtea-7-plugin:i386 icedtea-8-plugin:i386 icedtea-netx:i386
apt-get -y install openjdk-8-jre:i386 libxmu6:i386 icedtea-8-plugin firefox
update-alternatives --set mozilla-javaplugin.so /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/IcedTeaPlugin.so

# Chrome (for Flash)
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get update
apt-get upgrade
apt-get install -y google-chrome-stable

dpkg-reconfigure virtualbox-guest-dkms
