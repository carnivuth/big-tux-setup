#!/bin/bash

pgrep -x -l blueman-manager |while read PID NAME; do
if [ "$NAME" == "blueman-manager" ]; then 
	killall $NAME
else
	blueman-manager
fi
done

