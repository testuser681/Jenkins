FROM fedora:latest
USER root

RUN dnf -y install dnf-plugins-core
RUN dnf -y install openssh-server
RUN dnf -y install supervisor
RUN dnf -y install procps

ENTRYPOINT /sbin/init
