#!/bin/bash

key=$(echo -n @doegox_5f32c6e5|xxd -p)
openssl enc -d -in gyncryption_ctr.pdf -out Modes.jpg -aes-128-ctr -K $key -iv 0 -nopad
