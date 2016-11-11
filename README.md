# docker-node

blog: [《第一本Docker书》笔记 4.Docker Node构建app应用](http://beginman.cn/docker/2016/11/11/docker-for-nodejs/)

目录结构：

```bash
├── logstash
│   ├── Dockerfile
│   ├── build.sh
│   ├── logstash.conf
│   └── run.sh
├── nodejs
│   ├── Dockerfile
│   ├── build.sh
│   ├── nodeapp
│   │   ├── package.json
│   │   └── server.js
│   └── run.sh
├── redis_base
│   ├── Dockerfile
│   └── build.sh
├── redis_primary
│   ├── Dockerfile
│   ├── build.sh
│   └── run.sh
└── redis_replica
    ├── Dockerfile
    ├── build.sh
    ├── run_redis_replica1.sh
    └── run_redis_replica2.sh

```

Usage:

```bash

$ git clone https://github.com/BeginMan/docker-node.git
$ cd docker-node
# build all images
$ cd nodejs && ./build.sh
$ cd redis_base && ./build.sh
$ cd redis_primary && ./build.sh
$ cd redis_replica && ./build.sh
$ cd logstash && ./build.sh

# run containers
$ cd nodejs && ./run.sh
$ cd redis_primary && ./run.sh
$ cd redis_replica && ./run_redis_replica1.sh && ./run_redis_replica2.sh
$ cd logstash && ./run.sh

# curl node app
$ curl xxx:3000
```
