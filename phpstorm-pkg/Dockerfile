FROM php7-pkg
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y git
RUN apt-get install -y libfontconfig1
RUN apt-get install -y libfreetype6
RUN apt-get install -y libxext6
RUN apt-get install -y libxrender1
RUN apt-get install -y libxtst6
RUN apt-get install -y php-pear

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
