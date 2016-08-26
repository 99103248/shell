#!/bin/bash
###############################################
# this script cat nginx log daily
# To use: 
# chmod 777 nmp-install.sh
# ./nginx-log-cat.sh
###############################################
base_path='/usr/local/nginx/logs'
data_path='/data/log/nginx'
log_path=$(date -d yesterday +"%Y%m")
day=$(date -d yesterday +"%d")
mkdir -p $data_path/$log_path
mv $base_path/access.log $data_path/$log_path/access_$day.log
#echo $base_path/$log_path/access_$day.log
kill -USR1 `cat /usr/local/nginx/logs/nginx.pid`