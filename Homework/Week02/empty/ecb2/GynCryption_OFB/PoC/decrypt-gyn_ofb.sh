#!/bin/bash

key=$(echo -n @doegox_5f32c6e5|xxd -p)
openssl enc -d -in gyncryption_ofb.pdf -out OutputFeedbackMode.jpg -aes-128-ofb -K $key -iv 0 -nopad
