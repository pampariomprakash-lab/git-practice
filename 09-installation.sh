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