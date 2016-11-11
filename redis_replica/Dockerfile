FROM	beginman/redis-base
ENV REFRESHED_AT 2016-11-11

ENTRYPOINT ["redis-server", "--logfile /var/log/redis/redis-replica.log", "--slaveof redis_primary 6379"]
