cp arch_home/.bashrc ~/.bashrc
cp arch_home/.profile ~/.profile
ls .config |while read SOURCE ; do
echo "coping $SOURCE"
cp -r ".config/$SOURCE" "/home/matteo/.config/$DEST"
done
