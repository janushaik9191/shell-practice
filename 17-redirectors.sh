#!/bin/bash

LOGS_FOLDER="var/log/shell-script"
SCRIPT_NAME=$(echo $0 | -d "-" -f2)
TIME_STAMP=$(date)
LOG_FILE=$LOGS_FOLDER/$SCRIPT_NAME-$TIME_STAMP.log
mkdir -p $LOGS_FOLDER

USERID=$(id -u)
    if [ $USERID -ne 0 ]
        then
            echo "please run the script with root privilizes" | tee -a $LOG_FILE
        else
            exit 1
    fi

for package in $@ # $@ refers to all arguments passed to it
do
    dnf list installed $package  | tee -a $LOG_FILE

    if [ $? -ne 0 ]
    then
        echo "$package is not installed, going to install it.." | tee -a $LOG_FILE

        dnf install $package -y
        else
        echo "$package is already installed..nothing to do" | tee -a $LOG_FILE

    fi
done