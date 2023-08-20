#!/bin/bash

#our program goal is to install mysql

USERID=$(id -u)
#this function should validate the previous command and inform user it is success or failure
VALIDATE(){
    #1------ it will receive the argument
    if [ $? -ne 0 ]
    then 
        echo "installation ..... Failure"
        exit 1
    else 
        echo "installation.....success"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "Error : please run this script with root access"
    exit 1
else 
    echo "INFO : you are root user"
fi

yum install mysql -y

VALIDATE $?

yum install postfix -y

VALIDATE $?