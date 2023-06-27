#!/bin/bash
./saveconfigfiles.sh
git add . &&
git commit -m "backup of $(date)" &&
git push 
