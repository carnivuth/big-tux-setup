#!/bin/bash
cat configfiles |while read SOURCE DEST ; do
echo "coping $SOURCE"
cp -r "$SOURCE" "$DEST"
done
echo "update pkgs list"
#remove old files
rm archinstall_files/pacman_pkg.json
rm archinstall_files/other_packets.json
#create pacman's pkgs file
echo "\"packages\":[">>archinstall_files/tmp.json
pacman -Qen | cut -d ' ' -f1 | while read PKG; do 
 echo "\"$PKG\",">>archinstall_files/tmp.json
done 
sed '$ s/.$//' archinstall_files/tmp.json > archinstall_files/pacman_pkg.json 
rm archinstall_files/tmp.json
echo "]">>archinstall_files/pacman_pkg.json
## launch cpp to resolve include statements
cpp -P archinstall_files/user_configuration.template -o archinstall_files/user_configuration.json
#create other pkgs file
pacman -Qem | cut -d ' ' -f1 | while read PKG; do 
 echo "\"$PKG\",">>archinstall_files/other_packets.json
done