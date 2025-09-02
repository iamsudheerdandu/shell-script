#!/bin/bash



TIMESTAMP=$(date)
echo "script exicuted at: $TIMESTAMP"


NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))
echo "sum of $NUMBER1 and $NUMBER2 is : $SUM"