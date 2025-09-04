


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

#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: User required root access"

exit 1

else

    dnf list installed mysql
fi

if 
    [ $? -ne 0 ]

then 

    echo "ERROR: My sql already Installed"

    exit 1
else

dnf install mysql -y

if 

[ $? -ne 0 ]

then

echo "MY SQL Instillation FAILED"

exit 1

else

echo " My sql Instillation SUCCESS"

fi
fi