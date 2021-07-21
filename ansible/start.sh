#!/bin/bash

# open necessary ports
socat TCP-LISTEN:2377,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock &
socat TCP-LISTEN:7946,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock &
socat UDP-LISTEN:7946,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock &
socat UDP-LISTEN:4789,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock &

#docker initialization
docker swarm init

# build docker images
#docker build -t alpine ./alpine
#docker build -t centos ./centos
#docker build -t ubuntu ./ubuntu

# create overlay network
docker network create -d overlay --attachable my-overlay
