FROM fedora:latest
USER root
RUN dnf -y install dnf-plugins-core
RUN dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
RUN dnf -y install docker-ce docker-ce-cli containerd.io
