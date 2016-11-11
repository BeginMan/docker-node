#########################################################################
# File Name: run.sh
# Author: beginman(fangpeng)
# mail: xinxinyu2011@163.com
# Created Time: 2016-11-11 21:56:54
#########################################################################
#!/bin/bash

# -h 设置容器主机名，并被本地DNS服务正确解析
docker run -d -h redis-primary \
	--name redis_primary beginman/redis-primary
