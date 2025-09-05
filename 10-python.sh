#!/bin/bash

USERID=$(id -u )
    echo " the userid is $USERID "

if [ $USERID -eq 0 ]
    then 
    dnf install python -y
    echo "Python is being installed "
   if  [ dnf list installed python ]
   then exit 1
    else
    echo " run the script with sudo access"
fi
fi    