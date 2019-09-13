#!/bin/bash

key=$(echo -n OFB_AngeCryption|xxd -p)
openssl enc -d -in combined.png -out dec-duckduckgo.png -aes-128-ofb -K $key -iv 7d43d36a602acf3dd771e634dc4426c3 -nopad
