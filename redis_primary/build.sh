#!/bin/bash

echo "build redis primary image [beginman/redis-primary]...."
sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	docker build -t beginman/redis-primary .
elif [ $sysOS == 'Linux' ];then
	sudo docker build -t beginman/redis-primary .
else
	echo "Other OS: $sysOS"
	sudo docker build -t beginman/redis-primary .
fi

