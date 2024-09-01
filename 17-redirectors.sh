#!/bin/bash

LOGS_FOLDER="var/log/shell-practice"
SCRIPT_NAME=$("echo 17-redirectors.sh | cut -d "." -f2")
TIME_STAMP=$(date)
LOG-FILE=$"$LOGS_FOLDER/$SCRIPT_NAME-$TIME_STAMP.log"
mkdir -p $LOGS_FOLDER
