FROM debian:latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

# apt basics
RUN apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN apt-get install -y apt-utils
RUN apt-get upgrade -y

# for container inspection
RUN apt-get install -y less
RUN apt-get install -y vim
