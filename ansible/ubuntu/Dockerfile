FROM ubuntu:latest
USER root
RUN apt update && apt install -y openssh-server
CMD service ssh start
ENTRYPOINT bash
RUN service ssh start
