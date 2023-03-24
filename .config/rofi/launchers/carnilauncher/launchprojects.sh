#!/bin/bash
#get directories under home folder

#print all directories with .git folder
# show rofi with folders
# run code folder selected

# Import Current Theme


dir="$HOME/.config/rofi/launchers/carnilauncher"
theme='style-10'
#project folders
FOLDERS=( "/home/matteo" "/home/matteo/.config" "/home/matteo/universita/iss/iss_2023_matteo_longhi" "/home/matteo/universita/iss/iss_2023_matteo_longhi/projects" )

#rofi utilities
# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "$prompt" \
		-mesg "$mesg" \
		-markup-rows \
		-theme ${dir}/${theme}.rasi 
}

# Pass variables to rofi dmenu
run_rofi() {

	echo -e "$(for dir in ${FOLDERS[@]}; do ls -d "$dir"/*/ ; done)" | rofi_cmd
}

chosen="$(run_rofi)"
if [ -d "$chosen"  ]; then
code "$chosen" 
fi