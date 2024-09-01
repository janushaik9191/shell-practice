#!/bin/bash

USERID=$(uid -u)

if [ $USERID -ne 0 ]
then
    echo "run the script with root access"
else
    exit 1
fi