#!/bin/bash


if [ $# -ne 2 ]
then
echo "Usage - $0 x y"
exit 1
fi

echo "Two numbers you entered are $1 and $2"

sum=`expr $1 + $2`
echo "sum of two numbers is $sum"
