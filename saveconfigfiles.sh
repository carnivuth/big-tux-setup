#!/bin/bash
cat configfiles |while read SOURCE DEST ; do
echo "coping $SOURCE"
cp -r "$SOURCE" "$DEST"
done
echo "update pkgs list"
rm archinstall_files/pacman_pkg
rm archinstall_files/other_packets
pacman -Qen | cut -d ' ' -f1 | while read PKG; do 
 echo "\"$PKG\",">>archinstall_files/pacman_pkg
done
pacman -Qem | cut -d ' ' -f1 | while read PKG; do 
 echo "\"$PKG\",">>archinstall_files/other_packets
done