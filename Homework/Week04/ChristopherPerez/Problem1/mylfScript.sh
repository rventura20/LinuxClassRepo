#!/bin/bash


echo The first if will check if your number is greater than 20.
read -p "Choose a number, any number: " num

if [ $num -gt 20 ]
then
	echo nice number
else
	echo not nice number
fi
