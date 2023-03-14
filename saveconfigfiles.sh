#!/bin/bash
cat configfiles |while read SOURCE DEST ; do
cp -r "$SOURCE" "$DEST"
done