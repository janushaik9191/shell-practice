#!/bin/bash

echo "all variables passed to the script :: $@"
echo "total number of variables passed to the script :: $#"
echo "to find the name of the script :: $0"
echo "the present working directory :: $PWD"
echo "the current user home directory :: $HOME"
echo "the pid of the current executing script :: $$"
sleep 100 &
echo  "pid of current background process is :: $!"
echo "to find the previous command is success or not :: $?"