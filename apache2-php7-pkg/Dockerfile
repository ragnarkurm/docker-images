FROM php7-pkg
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y apache2
RUN apt-get install -y libapache2-mod-php7.0

# for pecl extensions
# RUN apt-get install -y php7.0-dev
# RUN apt-get install -y php-pear

# send out emails from php
RUN apt-get install -y ssmtp

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
