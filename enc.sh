#!/bin/sh
# $1: content  $2:key
# echo $1 | openssl aes-128-cbc -k $2 -base64 2>/dev/null > encip.txt
content=$(cat $1  2>/dev/null || echo $1) 
echo $content | openssl aes-128-cbc -k $2 -base64 2>/dev/null > encip.txt
