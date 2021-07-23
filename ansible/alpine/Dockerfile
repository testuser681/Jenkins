FROM alpine:3.9
USER root

RUN apk add openssh
RUN apk add supervisor
RUN apk add python3

RUN ssh-keygen -A
RUN sed '$d' /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo 'root:haslo123' | chpasswd

RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENTRYPOINT supervisord -c /etc/supervisor/conf.d/supervisord.conf

