#!/bin/bash

#GETTING MY CORRECT DIRECTORY
GITDIR=$(cat /home/.appdata |head -1)


chmod +x /$GITDIR/script/*
chmod +x /$GITDIR/script/start.sh
jupyter notebook --ip=0.0.0.0 --port=$PORT --NotebookApp.token='' --NotebookApp.password=''
