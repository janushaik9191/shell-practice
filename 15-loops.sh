#!/bin/bash

    USERID=$(id -u)

    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root priveleges"
        exit 1
    fi

for package in $@ # $@ refers to all arguments passed to it
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
        echo "$package is not installed, going to install it.."
        dnf install $package -y
        else
        echo "$package is already installed..nothing to do"
    fi
done