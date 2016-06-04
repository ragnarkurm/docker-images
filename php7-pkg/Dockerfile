FROM debian:jessie
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN apt-get install -y apt-utils

RUN apt-get install -y wget
RUN echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list
RUN echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list
RUN wget https://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg
RUN apt-get update

RUN apt-get upgrade -y
RUN apt-get install -y php7.0
RUN apt-get install -y php7.0-curl
RUN apt-get install -y php7.0-gd
RUN apt-get install -y php7.0-mysql

RUN apt-get install -y less
RUN apt-get install -y vim

RUN apt-get clean

# dont delete apt-get update cache
# easier to install packs from shell (less, vim, etc) for testing
# RUN rm -rf /var/lib/apt/lists/*
