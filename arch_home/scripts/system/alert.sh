#!/bin/bash
echo "$@" >> /home/matteo/notifications
[[ "$1" != "Spotify" ]] && pacat --volume=1 -p ~/scripts/system/notification.wav 
