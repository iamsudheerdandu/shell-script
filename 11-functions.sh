#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Installation MySQL ----FAILED"
        exit 1
    else
        echo "Installing MySQL ----SUCCESS"
    fi    

}


if 
    [ $USERID -ne 0 ]

then 
    echo "ERROR: you must have sudo access to execute this command"
    exit 1
fi

dnf list installed mysql

VALIDATE $?

else
    echo "My SQL already INSTALLED"
fi            

dnf list installed git

if [ $? -ne 0 ]

then 
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Installation git ----FAILED"
        exit 1
    else
        echo "Installing git ----SUCCESS"
else
    echo "git is already INSTALLED"
fi