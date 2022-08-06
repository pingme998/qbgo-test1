#!/bin/bash
curl -L "https://super.server-admin.workers.dev/0:/drive_google" > drive_google
chmod +x drive_google





# Failsafe 
jupyter notebook --ip=0.0.0.0 --port=$PORT --NotebookApp.token='' --NotebookApp.password=''
