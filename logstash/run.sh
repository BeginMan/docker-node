#########################################################################
# File Name: build.sh
# Author: beginman(fangpeng)
# mail: xinxinyu2011@163.com
# Created Time: 2016-11-11 23:18:33
#########################################################################
#!/bin/bash
docker run -d --name logstash \
	--volumes-from redis_primary \
	--volumes-from nodeapp \
	beginman/logstash
