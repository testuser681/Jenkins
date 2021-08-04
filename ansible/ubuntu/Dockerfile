FROM ubuntu:18.04
USER root

RUN apt update && apt -y install openssh-server
#RUN apt -y install supervisor
RUN apt -y install gnupg
RUN apt -y install python3
RUN apt -y install python3-pymongo

RUN sed '$d' /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo 'root:haslo123' | chpasswd
RUN mkdir -p /run/sshd

#RUN rm -rf /etc/supervisor/conf.d
#RUN mkdir /etc/supervisor/conf.d

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#ENTRYPOINT /usr/bin/supervisord
#ENTRYPOINT supervisord -c /etc/supervisor/conf.d/supervisord.conf
ENTRYPOINT /usr/sbin/init

