FROM tuanbui11/jenkins
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

# set default user
USER jenkins
