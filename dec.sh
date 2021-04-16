#!/bin/sh
# $1: key
cat encip.txt | openssl aes-128-cbc -d -k $1 -base64 2>/dev/null
