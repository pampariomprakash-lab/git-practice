#!/bin/bash

USERID=$(id -u)
#Function to validate command sucesss
VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo " $2 is ....Failed "
        exit 1
    else
        echo " $2 is ....Sucess"
    fi        
}

#checking if we have root access or not
if [ $USERID -eq 0 ]
then
    echo " you have  root acess "
    else
    echo " you don't have root access "
    exit 1
fi

dnf list installed git
#calling funtion
VALIDATE $? "Listing Git "
if [ $? -ne 0 ]
then
    echo " Git is not installed, going to install it.. "
    dnf install git -y
    VALIDATE $? " Installing Git"
else           
        echo "Git is already installed nothing to do.. "

fi    

dnf list installed mysql

if  [ $? -ne 0 ]
then
    echo " My sql is not installed. going to install it.."
    dnf install mysql -y
   VALIDATE $? " Installing MYSQL" #calling function
else
    echo " MySQL is already installed..nothing to do.."    
fi        