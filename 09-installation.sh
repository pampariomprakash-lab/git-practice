#!/bin/bash

USERID=$(id -u)
echo " User id is : $USERID "

if [ $USERID -eq 0 ]
then
    echo " you have root acess "
    #exit 1
    else
    echo " you don't have root access "
fi

dnf list installed git

if [ $? -ne 0 ]
then   
    echo " Git is not installed , going to install it.."
    dnf install git -y
else
    echo " it is already installed "

fi