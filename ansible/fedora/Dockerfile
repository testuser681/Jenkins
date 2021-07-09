FROM fedora:latest
USER root

RUN dnf -y install dnf-plugins-core
RUN dnf -y install openssh-server
RUN dnf -y install supervisor
RUN dnf -y install procps
#RUN dnf -y install ufw
#RUN dnf -y install firewall-config
#RUN dnf -y install firewalld
RUN dnf -y install passwd
RUN dnf -y install vim

#RUN sudo ufw allow ssh

ENTRYPOINT /sbin/init
