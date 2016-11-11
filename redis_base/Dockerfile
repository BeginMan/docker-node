# redis base image
FROM				ubuntu:latest
MAINTAINER			beginman.cn
ENV REFRESHED_AT	2016-11-12

RUN		apt-get -yqq update
RUN		apt-get -yqq install redis-server redis-tools

# 指定两个卷
VOLUME	[ "/var/lib/redis", "/var/log/redis" ]
EXPOSE	6379
CMD		[]



