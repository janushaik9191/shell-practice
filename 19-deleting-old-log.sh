#!/bin/bash

SOURCE_DIR=/var/log/shell-script

if [ -d $SOURCE_DIR ]
then
    echo "SOURCE_DIR is exists"
else
    echo "SOURCE_DIR is not exists"
    exit 1
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +1)
    echo "source dir files are : $FILES"
    while IFS= read -r files #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
do
    echo "Deleting file: $FILES"
    rm -rf $FILES
done <<< $FILES