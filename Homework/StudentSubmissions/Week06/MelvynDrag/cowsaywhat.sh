#!/bin/bash

cowsayLocation=$(which cowsay)
if [ "$cowsayLocation" = "" ]
then
	echo "You need to 'apt-get install cowsay' to run this code"
	exit 1
fi

cowsay what

