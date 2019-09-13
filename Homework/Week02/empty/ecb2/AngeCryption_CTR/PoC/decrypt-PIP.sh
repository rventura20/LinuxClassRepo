#!/bin/bash

key=$(echo -n CTR_AngeCryption|xxd -p)
openssl enc -d -in combined.png -out dec-duckduckgo.png -aes-128-ctr -K $key -iv a944d293a63a430d31077427a4888d7e -nopad
