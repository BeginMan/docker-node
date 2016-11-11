#!/bin/bash

echo "\033[32m build nodejs app image [beginman/nodejs]...."
sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	docker build -t beginman/nodejs .
elif [ $sysOS == 'Linux' ];then
	sudo docker build -t beginman/nodejs .
else
	echo "Other OS: $sysOS"
	sudo docker build -t beginman/nodejs .
fi

