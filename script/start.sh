#!/bin/bash
git clone https://github.com/odeke-em/drive
cd drive; cd drive-google






# Failsafe 
jupyter notebook --ip=0.0.0.0 --port=$PORT --NotebookApp.token='' --NotebookApp.password=''
