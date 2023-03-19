cp arch_home/.bashrc /home/matteo/.bashrc
cp arch_home/.profile /home/matteo/.profile
ls .config |while read SOURCE ; do
echo "coping $SOURCE"
cp -r ".config/$SOURCE" "/home/matteo/.config/$DEST"
done
