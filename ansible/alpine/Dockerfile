FROM alpine:latest
USER root
RUN apk add --update openrc
#RUN rc-update add docker boot
RUN apk add openssh
RUN apk add vim
RUN mkdir -p run/openrc
RUN touch run/openrc/softlevel
