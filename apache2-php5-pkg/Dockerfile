FROM debian:latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN apt-get install -y apt-utils
RUN apt-get upgrade -y
RUN apt-get install -y apache2
RUN apt-get install -y memcached
RUN apt-get install -y php5
# for pecl extensions
RUN apt-get install -y php5-dev
RUN apt-get install -y php5-gd
RUN apt-get install -y php5-memcache
RUN apt-get install -y php5-mysql
RUN apt-get install -y php5-pgsql
RUN apt-get install -y php-apc
# for pecl extensions
RUN apt-get install -y php-pear
# send out emails from php
RUN apt-get install -y ssmtp
RUN apt-get clean

# dont delete apt-get update cache
# easier to install packs from shell (less, vim, etc) for testing
# RUN rm -rf /var/lib/apt/lists/*
