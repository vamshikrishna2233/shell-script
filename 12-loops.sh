#!/bin/bash
USERID=$(id -u)
R="\e[31m"
N="\e[0m"

if [ $USERID -ne 0 ]
then 
    echo "$R ERROR: please run this script with root access $N"
    exit 1
fi

#all arguments are in $@
for i in $@
do 
    yum install $i -y
done