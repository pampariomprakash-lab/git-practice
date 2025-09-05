#!/bin/bash

USERID=$(id -u )
    echo " the userid is $USERID "

if [ $USERID -eq 0 ]
    then 
    dnf install python3 -y
    echo "Python is being installed "
   if   dnf list installed python3 &>/dev/null
   then exit 0
    else
     echo " Python installation faile."
     exit 1
    fi
else     
        echo " run the script with sudo access"
fi
   