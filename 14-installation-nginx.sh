#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "plese run the script with root access"
fi
    dnf list installed nginx 
    if [ $? -ne 0 ]
    then
        echo "nginx is not installed going to install it..."
        dnf install nginx -y
        if [ $? -ne 0 ]
        then
            echo "nginx is failed to insatll"
        else
            echo "nginx is successfully installed"
        fi
    else
        echo "nginx is already installed nothing to do"
fi