FROM fedora:latest
USER root

RUN dnf -y install dnf-plugins-core
RUN dnf -y install openssh-server
RUN dnf -y install passwd
RUN dnf -y install python3
RUN dnf -y install vim

RUN sed '$d' /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo 'root:haslo123' | chpasswd
RUN echo 'exclude=mongodb-org,mongodb-org-server,mongodb-org-shell,mongodb-org-mongos,mongodb-org-tools,mongodb-org-database-tools-extra' >> /etc/dnf/dnf.conf

COPY ./mongodb.repo /etc/yum.repos.d/mongodb.repo

ENTRYPOINT /sbin/init
