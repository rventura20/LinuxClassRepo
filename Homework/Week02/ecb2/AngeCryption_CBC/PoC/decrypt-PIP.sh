#!/bin/bash

key=$(echo -n CBC_can_fail_too|xxd -p)
openssl enc -d -in combined.png -out dec-duckduckgo.png -aes-128-cbc -K $key -iv c050b6e2a5b2773f0736d8c759c9d73c -nopad
