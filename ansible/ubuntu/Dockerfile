FROM ubuntu:latest
USER root

RUN apt update && apt install -y openssh-server
RUN apt install -y init && apt clean all
RUN if [[ tail -n1 /etc/ssh/sshd_config != 'PermitRootLogin yes']]; then echo 'true' >> /etc/ssh/sshd_config; fi
RUN echo 'root:haslo123' | chpasswd

ENTRYPOINT bash

