#!/bin/bash
echo "$@" >> /var/log/notifications
[[ "$1" != "" ]] && paplay --volume=1 ~/scripts/system/notification.wav 
