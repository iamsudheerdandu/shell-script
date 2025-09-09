#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 ----FAILED"
        exit 1
    else
        echo "$2 ----SUCCESS"
    fi    

}







if 
    [ $USERID -ne 0 ]

then 
    echo "ERROR: you must have sudo access to execute this command"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y 
    VALIDATE $? "Installing MySQL"   #keeping previous command exit status as first argument $?, and Installing MySQl as second argument
else
    echo "My SQL already INSTALLED"
fi            

dnf list installed git

if [ $? -ne 0 ]

then 
    dnf install git -y
    VALIDATE $? "Installing git"   # As above passing two arguments in the Function
else
    echo "git is already INSTALLED"
fi