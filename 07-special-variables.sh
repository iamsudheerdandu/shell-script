#!/bin/bash

#Special Variables

echo "all variables passed : $@"
echo "Number of variables : $#"
echo "Script name : $0"
echo "Present working directory : $PWD"
echo "Home directory of current user : $HOME"
echo "Process id of current script : $$"
echo "which user is running this script : $USER"
echo sleep 60 &
echo "Process id of last command in background : $!"
echo "Previous command exit status: $?"


# $1 refers to the first argument passed to the script when it is executed.