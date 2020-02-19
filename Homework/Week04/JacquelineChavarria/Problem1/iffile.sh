#!/bin/bash

echo  "Enter a number between 0-20: " 
read num
if [[ $num -lt 10 ]]
then
	num2=$((num+4))
	echo "$num plus 4 is $num2"
elif [[ $num -lt 15 ]]
then
	num2=$((num*5))
	echo "$num times 5 is $num2"
else
	num2=$((num%4))
	echo "$num % 4 is $num2"
fi

echo "Enter your name's initial: "
read letter
if [[ $letter -lt m ]]
then 
	echo "You're in the upper level"
else
	echo "You're in the lower level"
fi


