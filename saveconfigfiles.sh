#!/bin/bash
cat configfiles |while read SOURCE DEST ; do
echo "coping $SOURCE"
cp -r "$SOURCE" "$DEST"
done
