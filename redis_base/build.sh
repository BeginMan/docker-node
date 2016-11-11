#!/bin/bash

echo -e "\033[32m build redis base image [beginman/redis-base]...."
sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	docker build -t beginman/redis-base .
elif [ $sysOS == 'Linux' ];then
	sudo docker build -t beginman/redis-base .
else
	echo "Other OS: $sysOS"
	sudo docker build -t beginman/redis-base .
fi

