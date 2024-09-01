#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "run the script with root access"
fi

dnf list installed mysql-server
    if [ $? -ne 0 ]
    then
        echo "mysql server is not installed going to install it"
        dnf install mysql-server -y
        if [ $? -ne 0 ]
        then 
        echo "mysql-server is is failed to install"
        else
        echo "mysql-server installation is success"
    else
        echo "mysql server is already installed" 
    fi
