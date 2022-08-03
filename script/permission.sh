#!/bin/bash

#GETTING MY CORRECT DIRECTORY
GITDIR=$(cat /home/.appdata |head -1)


chmod +x /$GITDIR/script/*
chmod +x /$GITDIR/script/start.sh
