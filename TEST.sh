#!/bin/bash

USERID=$(id -u)


VALIDATE() {

if [ $1 -ne 0 ]
    then 
        echo -e "ERROR: $2 ---- $R Failed $N"
        exit 1
    else 
        echo -e "$2 ---- $G Success $N"
    fi    


}


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


LOG_FOLDER="/var/log/shellscript-log"
LOG_FILE=$( echo $0 | cut -d "." -f1)
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME=$LOG_FOLDER/$LOG_FILE-$TIME_STAMP.log


echo "script started executed at $TIME_STAMP" &>>$LOG_FILE_NAME

if [ $USERID -ne 0 ]
then
    echo "ERROR: User must have sudo access"
    exit 1
fi

dnf list installed mysql &>>LOG_FILE_NAME

if [ $? -ne 0 ]
then 
    dnf install mysql -y &>>LOG_FILE_NAME
    
    VALIDATE $? "Installing MySQL"

else
    echo 
        -e "MySQL is already $Y Installed"
fi     

dnf list instlled git &>>LOG_FILE_NAME

if [ $? -ne 0 ]
then
    dnf install git -y &>>LOG_FILE_NAME

    VALIDATE $? "Installing git"
else 
    echo -e "git is already $Y Installed"
fi    