#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
        echo "plese run the script with root accces"
else
    exit 1
fi