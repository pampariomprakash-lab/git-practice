#!/bin/bash

USERID=$(id -u)
if [ $USERID -eq 0]
then
    echo " you have $USERID root acess"
    else
    echo " you don't have root access "
fi