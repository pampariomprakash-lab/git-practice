#!/bin/bash

USERID=$(id -u)

VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo " $2 is ....Failed "
        exit 1
    else
        echo " $2 is ....Sucess"
    fi        
}

if [ $USERID -eq 0 ]
then
    echo " you have  root acess "
    else
    echo " you don't have root access "
    exit 1
fi

dnf list installed git

VALIDATE $? "Listing Git "
if [ $? -ne 0 ]
then
    echo " Git is not installed, going to install it.. "
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo " Git isntallation is not sucess..check it"
        exit 1
    else
        echo " Git installation is scuess"
    fi
else           
        echo "Git is already installed nothing to do.. "

fi    

dnf list installed mysql

if  [ $? -ne 0 ]
then
    echo " My sql is not installed. going to install it.."
    dnf install mysql -y
    if [ $? -ne 0 ]
    then    
        echo "MYSQL installation is failure..please check "
        exit 1
    else
        echo " MYSQL installation is sucess "    
    fi
else
    echo " MySQL is already installed..nothing to do.."    
fi        