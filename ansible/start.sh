#!/bin/bash

# open necessary ports
socat TCP-LISTEN:2377,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock &
socat TCP-LISTEN:7946,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock &
socat UDP-LISTEN:7946,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock &
socat UDP-LISTEN:4789,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock &

#docker initialization
docker swarm init

# build docker images
#docker build -t centos ./centos
#docker build -t centos2 ./centos2
#docker build -t centos3 ./centos3

# create overlay network
docker network create -d overlay --attachable my-overlay

# remove public keys from containers to avoid errors
known_hosts='/Users/pdrabicki/.ssh/known_hosts'
grep -v "^\[127.0.0.1\]" $known_hosts  > tmpfile && mv tmpfile $known_hosts
