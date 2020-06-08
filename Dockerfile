FROM jenkins/jenkins:alpine
USER root

# set version label
LABEL maintainer="tuanbui11-updated-Dockerfile"

# Install the latest Docker CE binaries
RUN \
echo "**** install runtime packages ****" && \
apk add --no-cache \
    docker && \
echo "**** cleanup ****" && \
rm -rf \
    /tmp/*
#RUN cp jenkins.war ./
RUN wget http://updates.jenkins-ci.org/download/war/2.240/jenkins.war
RUN mv ./jenkins.war /usr/share/jenkins
RUN chown jenkins:jenkins /usr/share/jenkins/jenkins.war
# set default user
USER jenkins
