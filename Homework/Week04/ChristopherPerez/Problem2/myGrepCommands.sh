#!/bin/bash

echo "1. Ends in f"
grep "f$" myGrepFile.txt
echo "2. Starts with lower case letter"
grep "^[a-z]" myGrepFile.txt
echo "3. Starts with number"
grep "^[0-9]" myGrepFile.txt
echo "4. I 5 times"
grep "I\{5,\}" myGrepFile.txt
echo "5. Starts with J"
grep -i "^j" myGrepFile.txt
