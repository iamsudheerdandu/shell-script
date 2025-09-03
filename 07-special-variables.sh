#!/bin/bash

echo "all variables passed : $@"
echo "Number of variables : $#"
echo "Script name : $0"
echo "Present working directory : $pwd"
echo "Home directory of current user : $home"
echo "which user is running this script : $user"
echo "Process id of current script : $$"
echo sleep 60 &
echo "Process id of last command in background : $!"