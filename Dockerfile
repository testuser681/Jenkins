FROM jenkins/jenkins:lts-jdk11
USER root

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/config.yaml

COPY jenkins-plugins /usr/share/jenkins/ref/jenkins-plugins
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/jenkins-plugins

#RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
#  && tar xzvf docker-17.04.0-ce.tgz \
#  && mv docker/docker /usr/local/bin \
#  && rm -r docker docker-17.04.0-ce.tgz

COPY config.yaml /var/jenkins_home/config.yaml
