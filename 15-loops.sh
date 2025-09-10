#!/bin/bash

USERID=$(id -u)


R="\e[31m"   #variables
G="\e[32m"
Y="\e[33m"
N="\e[0m"    #N changing the colour to normal

LOGS_FOLDER="/var/log/shellscript-logs"   #logs
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){                      #Functions
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ---- $R FAILED $N"              #
        exit 1
    else
        echo -e "$2 ---- $G SUCCESS $N"
    fi    

}


echo "Script started executing at : $TIMESTAMP" &>>$LOG_FILE_NAME  #&>> is to log the file


if 
    [ $USERID -ne 0 ]

then 
    echo "ERROR: you must have sudo access to execute this command"
    exit 1
fi


for PACKAGE in $@

do  
    if [$? -ne 0 ]
    then
        dnf list installed $PACKAGE &>>LOG_FILE_NAME
        VALIDATE $? "Installing $PACKAGE"
    else
        echo "$PACKAGE already $Y Installed $N"
    fi
done

