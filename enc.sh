#!/bin/sh
# $1: content  $2:key
# echo $1 | openssl aes-256-cbc -k $2 -base64 2>/dev/null > encip.txt
content="$(cat $1  2>/dev/null || echo $1)" 
lastcontent="`./dec.sh $2`"
#echo last:"$lastcontent"   cur:"$content"
if [ "$content" == "$lastcontent" ]; then
#	echo same
#	exit 0
echo same > /dev/null
else
#echo not same
#exit 0

echo "$content" | openssl aes-256-cbc -k $2 -base64 2>/dev/null > encip.txt
#exit 0
git commit -a -m "update ip" 2>&1 >/dev/null
fi
git push origin master
