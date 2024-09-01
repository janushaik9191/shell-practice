#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run the script with root access"
else
    exit 1
fi

for package in $@
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then 
        echo "$package is not installed going to install it..."
        dnf install $package -y
    else
        echo "$package is already installed nothing to do.."
    fi
done