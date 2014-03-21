#!/bin/bash

ip_eth0=`ifconfig enp0s25 | grep 'inet ' | awk '{ print $2}'`
ip_wlan0=`ifconfig wlan0 | grep 'inet ' | awk '{ print $2}'`

if [ $ip_wlan0 ]; then ip=$ip_wlan0; fi
if [ $ip_eth0 ];  then ip=$ip_eth0;  fi

echo "$ip"
