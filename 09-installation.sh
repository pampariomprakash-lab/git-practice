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
    if [ $? -ne 0 ]
    then
        echo " Git installation is not successfull,, recheck it"
        exit 1
    else
        echo " git installation is successfull"
    fi
else
    echo " it is already installed nothing to do "

fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo " MYsql is not installed..going to install "
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo " MY sql installation failur..please check "
        exit 1
    else
        echo "My sql installtion is suceeslull "
    fi
 fi           