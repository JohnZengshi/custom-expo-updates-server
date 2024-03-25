#!/bin/bash
# 检测是否存在 neer-updates-server-test 镜像
if [[ "$(docker images -q neer-updates-server-test 2> /dev/null)" == "" ]]; then
    # 如果不存在，执行 docker build
    echo "neer-updates-server-test 镜像不存在，开始构建..."
    docker build -t neer-updates-server-test -f Dockerfile-test .
fi
# 检测是否存在 neer-updates-server-test 容器
if [[ "$(docker ps -aqf name=neer-updates-server-test 2> /dev/null)" != "" ]]; then
    # 如果存在，停止并删除容器
    echo "neer-updates-server-test 容器存在，停止并删除..."
    docker stop neer-updates-server-test
    docker rm neer-updates-server-test
fi
# 运行容器
echo "启动 neer-updates-server-test 容器..."
docker run -p 3001:3000 -d --name neer-updates-server-test -v /data/server/neer-updates-server/updates-test:/app/updates neer-updates-server-test