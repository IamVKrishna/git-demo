#!/bin/bash

rm oddfile evenfile
num=1
while read line
do
rem=`expr $num % 2`
if [ $rem -eq 0 ]
then
echo "$num. $line" | tee -a evenfile
else
echo "$num. $line" | tee -a oddfile
fi

num=`expr $num + 1`
done < $1
