#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    dnf install nginx -y
else
    exit 1
fi