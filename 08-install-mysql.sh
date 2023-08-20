#!/bin/bash

#our program goal is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error : please run this script with root access"
    exit 1
else 
    echo "INFO : you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "installation of mysql is error"
    exit 1
else 
    echo "installation of mysql is success"
fi

yum install postfix -y

if [ $? -ne 0 ]
then 
    echo "installation of postfix is error"
    exit 1
else 
    echo "installation of postfix is success"
fi