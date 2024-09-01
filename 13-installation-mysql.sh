#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "run the script with root access"
else
    exit 1
fi
dnf list installed mysql-server
  if [ $? -ne 0 ]
  then
  echo "mysql server is not installed going to install it"
  else
  echo "mysql sertver is already installed" 
  fi
  