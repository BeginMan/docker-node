#!/bin/bash

echo "build redis replica image [beginman/redis-replica]...."
sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	docker build -t beginman/redis-replica .
elif [ $sysOS == 'Linux' ];then
	sudo docker build -t beginman/redis-replica .
else
	echo "Other OS: $sysOS"
	sudo docker build -t beginman/redis-replica .
fi

