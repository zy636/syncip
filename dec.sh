#!/bin/sh
# $1: key
cat encip.txt | openssl aes-256-cbc -d -k $1 -base64 2>/dev/null
