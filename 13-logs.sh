#!/bin/bash

USERID=$(id -u)


R="\e[31m"   #variables
G="\e[32m"
Y="\e[33m"

LOGS_FOLDER="/var/log/shellscript-logs"   #logs
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){                      #Functions
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ---- $R FAILED"
        exit 1
    else
        echo -e "$2 ---- $G SUCCESS"
    fi    

}


echo "Script started executing at : $TIMESTAMP" &>>$LOG_FILE_NAME  #&>> is to log the file


if 
    [ $USERID -ne 0 ]

then 
    echo "ERROR: you must have sudo access to execute this command"
    exit 1
fi

dnf list installed mysql &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y 
    VALIDATE $? "Installing MySQL"
else
    echo -e "My SQL already $Y INSTALLED"
fi            

dnf list installed git &>>$LOG_FILE_NAME

if [ $? -ne 0 ]

then 
    dnf install git -y
    VALIDATE $? "Installing git"
else
    echo -e "git is already $Y INSTALLED"
fi