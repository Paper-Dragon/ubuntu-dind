ARG BASE_IMAGE=ubuntu:22.04
FROM ${BASE_IMAGE}

LABEL org.opencontainers.image.authors="Paper-Dragon <2678885646@qq.com> Billy Ray Teves <billyteves@gmail.com>"

ENV TZ=Asia/Shanghai

# Let's start with some basic stuff.
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables
    
# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh

# Install the magic wrapper.
ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker
CMD ["wrapdocker"]
