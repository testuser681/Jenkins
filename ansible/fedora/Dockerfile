FROM fedora:latest
USER root
RUN dnf -y install dnf-plugins-core
RUN dnf -y install openssh-server
RUN systemctl enable sshd
#RUN systemctl start sshd
