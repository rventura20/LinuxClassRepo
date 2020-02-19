#!/bin/bash

grep "^D" myGrepFile.txt
echo "^D"
grep "c$" myGrepFile.txt
echo "c$"
grep "[0-9]+" myGrepFile.txt
echo "[0-9]+"
grep "[a-z]" myGrepFile.txt
echo "[a-z]"
grep "[A-Z]" myGrepFile.txt
echo "[A-Z]"
grep "{5,}" myGrepFile.txt
echo "[A-Z]"
