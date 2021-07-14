#!/bin/bash

docker run -dit -p 2222:22 --name alpine --network="my-overlay" --rm -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN alpine
docker run -dit -p 2223:22 --name ubuntu --network="my-overlay" --rm -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN ubuntu
docker run -dit -p 2224:22 --name fedora --network="my-overlay" --rm -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN fedora

