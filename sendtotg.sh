#!/bin/bash

filename=$1
token=$2
chatid=$3

curl -v -F "chat_id=${chatid}"  \
-F document=@${filename}.zip \
https://api.telegram.org/bot${token}/sendDocument
			
for i in {1..9}
do
if [ -f ${filename}.z0${i} ]; then
	curl -v -F "chat_id=${chatid}"  \
	-F document=@${filename}.z0${i} \
	https://api.telegram.org/bot${token}/sendDocument
else
	echo "${i} not found"
fi
done