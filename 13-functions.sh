#!/bin/bash

USERID=$(id -u)

VALIDATE() {
    echo "exit status: $1 "
}

if [ $USERID -eq 0 ]
then
    echo " you have  root acess "
    else
    echo " you don't have root access "
    exit 1
fi

dnf list installed git

VALIDATE $?
# if [ $? -ne 0 ]
# then
#     echo " Git is not installed, going to install it.. "
#     dnf install git -y
#     else
#     echo "Git is already installed nothing to do.. "
# fi    

# dnf list installed mysql

# if  [ $? -ne 0 ]
# then
#     echo " My sql is not installed. going to install it.."
#     dnf install mysql -y
#     if [ $? -ne 0 ]
#     then    
#         echo "MYSQL installation is failure..please check "
#         exit 1
#     else
#         echo " MYSQL installation is sucess "    
#     fi
# else
#     echo " MySQL is already installed..nothing to do.."    
# fi        