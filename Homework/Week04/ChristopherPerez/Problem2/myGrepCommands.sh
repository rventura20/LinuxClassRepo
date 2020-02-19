#!/bin/bash

echo "1. c$"
grep "c$" myGrepFile.txt
echo "2. ^[a-z]"
grep "^[a-z]" myGrepFile.txt
echo "3. I{5}"
grep "I{5}" myGrepFile.txt
