FROM alpine:latest
USER root

RUN apk add --update openrc
RUN apk add openssh
RUN apk add supervisor

RUN mkdir -p run/openrc
RUN touch run/openrc/softlevel

RUN ssh-keygen -A
RUN sed '$d' /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo 'root:haslo123' | chpasswd

RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENTRYPOINT supervisord -c /etc/supervisor/conf.d/supervisord.conf

