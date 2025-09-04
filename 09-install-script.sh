#!/bin/bash


# USERID=$(id -u)

# if [ $USERID -ne 0 ]
#     then
#     echo "Required SUDO access"
#     exit 1
# fi

# dnf list installed mysql

# if [ $? -ne 0 ]
#     then

#     dnf install mysql -y
    
#     if [ $? -ne 0 ]
#     then
#         echo " Instillation mysql...Failed"
        
        
#         exit 1
#         else
#         echo "Instillation mysql.... Success"
#     fi
# else
#     echo "MySQL already Installed"

# fi




USERID=$(id -u)

if [ $USERID -ne 0 ] #Check Root access
then
    echo "ERROR: User required root access"

    exit 1

fi

dnf list installed mysql #Check whether SQL is installed

if 
    [ $? -eq 0 ]

then 
    echo "Mysql is already Installed...."

    exit 1

fi


dnf install mysql -y

if [ $! -ne 0 ]


then 
    echo "My SQL Instillation.......FAILED"
    exit 1
else    
    echo "My SQL Instillation.......SUCCESS"

fi

