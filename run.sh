#!/bin/bash

PORT=5900

for i in {0..60}
do
	nc -z ${IP} ${PORT}
	if [ $? -ne 0 ]
	then
		echo 'wait...'
		sleep 0.1
	else	
		break
	fi
done

NAME=/root/save_video/`date +%s%N`.flv
echo "Save video: ${NAME}"
flvrec.py -P password.txt -o ${NAME} ${IP}:99 ${PORT}
