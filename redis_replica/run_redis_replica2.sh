#########################################################################
# File Name: run.sh
# Author: beginman(fangpeng)
# mail: xinxinyu2011@163.com
# Created Time: 2016-11-11 22:47:01
#########################################################################
#!/bin/bash
docker run -d -h redis-replica2 --name redis_replica2 \
	--link redis_primary:redis_primary \
	beginman/redis-replica
