cp arch_home/.bashrc /home/matteo/.bashrc
cp arch_home/.profile /home/matteo/.profile
ls .config |while read FILE ; do
echo "coping $FILE"
cp -r ".config/$FILE" "/home/matteo/.config/$FILE"
done
ls .local/share/applications |while read FILE ; do
echo "coping $FILE"
cp -r ".local/share/applications/$FILE" "/home/matteo/.local/share/applications/$FILE"
done
ls .local/share/icons |while read FILE ; do
echo "coping $FILE"
cp -r ".local/share/icons/$FILE" "/home/matteo/.local/share/icons/$FILE"
done