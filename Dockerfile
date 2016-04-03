# Pull base image.
FROM ubuntu:14.04

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y curl man vim wget locales && \
  rm -rf /var/lib/apt/lists/*

RUN curl https://install.meteor.com/ | sh
RUN locale-gen en_US.UTF-8
RUN localedef -i en_GB -f UTF-8 en_US.UTF-8

ADD . /meteor
CMD cd /meteor && /bin/bash startApp.sh