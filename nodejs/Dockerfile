FROM				ubuntu:latest
MAINTAINER			beginman.cn
ENV REFRESHED_AT	2016-11-11

RUN		apt-get -yqq update
RUN		apt-get -yqq install nodejs npm
RUN		ln -s /usr/bin/nodejs /usr/bin/node
RUN		mkdir -p /var/log/nodeapp

ADD			nodeapp /opt/nodeapp/
WORKDIR		/opt/nodeapp
RUN			npm install
VOLUME		["/var/log/nodeapp"]

EXPOSE		3000

ENTRYPOINT	["nodejs", "server.js"]

