#!/bin/bash

#our program goal is to install mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    #1------ it will receive the argument
    if [ $? -ne 0 ]
    then 
        echo -e "$2 ..... $R Failure $N"
        exit 1
    else 
        echo -e "$2.....$G success $N"
    fi
}

USERID=$(id -u)
#this function should validate the previous command and inform user it is success or failure


if [ $USERID -ne 0 ]
then 
    echo "Error : please run this script with root access"
    exit 1
else 
    echo "INFO : you are root user"
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MYSQL"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing postfix"