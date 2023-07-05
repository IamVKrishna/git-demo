#!/bin/bash


echo "below is the calculator"
echo -e " 1) ADD\n 2) SUB\n 3) MULTILPY \n 4) DIVISON \n"
echo "slect option from above menu"
read option
case $option in 
1) echo "enter number to add"
   read add
   sum=0
   for i in $add;do
   sum=`expr $sum + $i`
   done
   echo "sum of $add is $sum"
   ;;


2) echo "enter two numbers to substract"
   echo "enter 1st number"
   read num1
   echo "enter 2nd number"
   read num2 
   if [ $num1 -gt $num2 ];then
   sub=`expr $num1 - $num2`
   else 
   sub=`expr $num2 - $num1`
   fi
   echo "sub of $num1 and $num2 is $sub"
   ;;


3) echo "enter numbers to multiply"
   read num
   mul=1
   for i in $num;do
   mul=`expr $mul \* $i`
   done
  echo "multiplication of $num is $mul"
   ;;

4) echo "enter numbers to divide"
   echo "enter 1st number"
   read no1
   echo "enter 2nd number"
   read no2
   if [ $no1 -gt $no2 ]; then
   div=`expr $no1 / $no2`
   else
   div=`expr $no2 / $no1`
   fi
   echo "div of $no1 and $no2 is $div"
   ;;
   esac 
  
  
