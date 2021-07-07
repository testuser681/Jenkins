FROM ubuntu:latest
USER root
RUN apt update && apt install -y openssh-server
ENTRYPOINT bash
RUN service ssh start
