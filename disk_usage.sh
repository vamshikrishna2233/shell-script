#!/bin/bash

#colors
#validations
#log redirections

LOGFILE_DIRECTION=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTION/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="'\e[33m"

DISK_USAGE=$(df -hT | grep -vE  'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1

#IFS----internal field separator is space  
while IFS= read line
do
    echo "output: $line"
done <<< $DISK_USAGE