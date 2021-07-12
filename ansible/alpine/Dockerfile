FROM alpine:latest
USER root
RUN apk add --update openrc
#RUN rc-update add docker boot
RUN apk add openssh
RUN apk add vim
RUN apk add supervisor
RUN mkdir -p run/openrc
RUN touch run/openrc/softlevel
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]

