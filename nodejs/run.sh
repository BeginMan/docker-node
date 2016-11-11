#########################################################################
# File Name: run.sh
# Author: beginman(fangpeng)
# mail: xinxinyu2011@163.com
# Created Time: 2016-11-10 15:08:27
#########################################################################
#!/bin/bash

sysOS=`uname -s`
if [ $sysOS == 'Darwin' ];then
	IP=`docker-machine ip default`
	echo "\033[32m curl "${IP}":3000"
elif [ $sysOS == 'Linux' ];then
	echo "\033[32m curl localhost:3000"
else
	echo "\033[31m Other OS: $sysOS"
	echo "\033[32m curl localhost:3000"
fi

docker run -d \
	-p 3000:3000 \
	--link redis_primary:redis_primary \
	--name nodeapp  \
	beginman/nodejs

