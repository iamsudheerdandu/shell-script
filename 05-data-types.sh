#!/bin/bash



TIMESTAMP=$(date)
echo "script exicuted at: $TIMESTAMP"


NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))
echo "sum of number1 and  number2 is : $SUM"