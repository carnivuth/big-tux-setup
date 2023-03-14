#!/bin/bash
echo "$@" > /home/matteo/alertoutput
[[ "$1" != "" ]] && paplay --volume=1 ~/scripts/system/notification.wav 
