FROM ubuntu:latest
ENV REFRESHED_AT 2016-11-11

RUN apt-get -yqq update
RUN apt-get -yqq install wget
RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch |  apt-key add -
RUN echo 'deb http://packages.elasticsearch.org/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
RUN apt-get -yqq update
RUN apt-get -yqq install logstash default-jdk

ADD logstash.conf /etc/

# 指定工作目录
WORKDIR /opt/logstash
# 指定启动命令
ENTRYPOINT [ "bin/logstash" ]
# 指定启动参数
CMD [ "--config=/etc/logstash.conf" ]

