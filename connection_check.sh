# a bash script for checking the internet connection
# using it with crontab it can check and log it every hour
# example:
# crontab -e
# 0 * * * * /home/pi/Scripts/connection_check.sh >> /home/pi/connection_check.csv


#!/bin/bash

wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0  ]]; then
         date "+%Y%m%d.%H%M,1 "
else
         date "+%Y%m%d.%H%M,0 "
fi
