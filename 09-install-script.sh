#!/bin/bash



USERID=$(id -u)

if [ $USERID -ne 0 ] #Check Root access
then
    echo "ERROR: User required root access"

    exit 1  # other than 0

fi

dnf list installed mysql #Check whether SQL is installed

if 
    [ $? -eq 0 ]

then 
    echo "mysql is already ........INSTALLED"

    exit 1

fi


dnf install mysqll -y #Installing mysql

if [ $? -ne 0 ]


then 
    echo "ERROR : mysql Instillation.......FAILED"
    exit 1
else    
    echo "ERROR : mysql Instillation.......SUCCESS"

fi

