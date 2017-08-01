#!/bin/bash
# en0 comes up automatically
# turn on WiFi after sleep
# get current wifi device
CURRENT_DEVICE=$(networksetup -listnetworkserviceorder | grep -o 'Wi-Fi.*' | grep -o 'en[[:digit:]]')
# echo "Current Wi-Fi Device = '$CURRENT_DEVICE'"
sleep 3
# turn on wifi
networksetup -setairportpower $CURRENT_DEVICE on