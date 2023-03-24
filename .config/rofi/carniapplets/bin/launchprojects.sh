#!/bin/bash
#get directories under home folder

#print all directories with .git folder
# show rofi with folders
# run code folder selected

# Import Current Theme
source "$HOME"/.config/rofi/carniapplets/shared/theme.bash
theme="$type/$style"
#project folders
FOLDERS=( "/home/matteo" "/home/matteo/.config" "/home/matteo/universita/iss/iss_2023_matteo_longhi" "/home/matteo/universita/iss/iss_2023_matteo_longhi/projects" )

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

	echo -e "$(for dir in ${FOLDERS[@]}; do ls -d "$dir"/*/ ; done)" | rofi_cmd
}

chosen="$(run_rofi)"
if [ $chosen!="" ]; then
code $chosen 
fi