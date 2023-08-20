#!/bin/bash

#our program goal is to install mysql

USERID=$(id -u)
#this function should validate the previous command and inform user it is success or failure
VALIDATE(){
    #1------ it will receive the argument
    if [ $? -ne 0 ]
    then 
        echo "$2 ..... Failure"
        exit 1
    else 
        echo "$2.....success"
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

VALIDATE $? "Installing MYSQL"

yum install postfix -y

VALIDATE $? "Installing postfix"