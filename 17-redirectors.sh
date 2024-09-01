#!/bin/bash

LOGS_FOLDER="var/log/shell-practice"
SCRIPT_NAME=$(echo $0 | cut -d "." -f2)
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG-FILE=$"$LOGS_FOLDER/$SCRIPT_NAME-$TIME_STAMP.log"
mkdir -p $LOGS_FOLDER
