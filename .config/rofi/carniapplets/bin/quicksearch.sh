#!/bin/bash
#get directories under home folder

#print all directories with .git folder
# show rofi with folders
# run code folder selected

# Import Current Theme
source "$HOME"/.config/rofi/carniapplets/shared/theme.bash
theme="$type/$style"
browser="firefox"
#project folders

#rofi utilities
# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "$prompt" \
		-mesg "$mesg" \
		-markup-rows \
		-theme ${theme}
}

# Pass variables to rofi dmenu
run_rofi() {

	 echo -e "search with firefox "  "pippo" |rofi_cmd
}
 
chosen="$(run_rofi)"
if [ $chosen!="" ]; then
#$browser --new-window $chosen & 
fi