#!/bin/bash
echo "$@" >> /home/matteo/notifications
[[ "$1" != "Spotify" ]] && paplay --volume=1 ~/scripts/system/notification.wav 
