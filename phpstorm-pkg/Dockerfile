FROM debian:latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN apt-get install -y apt-utils
RUN apt-get upgrade -y
RUN apt-get install -y libxext6
RUN apt-get install -y libxrender1
RUN apt-get install -y libxtst6
RUN apt-get clean

# dont delete apt-get update cache
# easier to install packs from shell (less, vim, etc) for testing
# RUN rm -rf /var/lib/apt/lists/*
