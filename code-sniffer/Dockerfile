FROM debian:latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN apt-get install -y apt-utils
RUN apt-get upgrade -y
RUN apt-get install -y php
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "compass" ]
