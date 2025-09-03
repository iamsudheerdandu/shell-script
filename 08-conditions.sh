#!/bin/bash

NUMBER=$1

# -gt, -lt, -eq, -ge, -le

if [$NUMBER -gt 100]
then 
    echo "given number is grater than 100"
else
    echo "given number is less than or equal to 100"
fi