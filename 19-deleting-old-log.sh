#!/bin/bash

SOURCE_DIR=/home/ec2-user/shell-practice

if [ -d SOURCE_DIR ]
then
    echo "SOURCE_DIR is exists"
else
    echo "SOURCE_DIR is not exists"
    exit 1
fi