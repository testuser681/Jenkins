#!/bin/bash

docker run -dit -p 2222:22 -p 27001:27017 --name centos --network="my-overlay" --rm -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN centos
docker run -dit -p 2223:22 -p 27002:27017 --name centos2 --network="my-overlay" --rm -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN centos
docker run -dit -p 2224:22 -p 27003:27017 --name centos3 --network="my-overlay" --rm -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN centos

