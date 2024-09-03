#!/bin/bash

SOURCE_DIR=/var/log/shell-script

if [ -d $SOURCE_DIR ]
then
    echo "SOURCE_DIR is exists"
else
    echo "SOURCE_DIR is not exists"
    exit 1
fi
    FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
    FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
        echo "the 14 days older sorted files are : $FILES"
        echo "deleting the 14 days older files"
        rm -rm $FILES