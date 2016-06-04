FROM debian:latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

# apt basics
RUN apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN apt-get install -y apt-utils
RUN apt-get upgrade -y

# for core-config
RUN apt-get install -y less
RUN apt-get install -y vim

# for download
RUN apt-get install -y curl
RUN apt-get install -y wget

# for achive-backup, archive-restore
RUN apt-get install -y gzip
RUN apt-get install -y tar

# for sql-cli, sql-dump
RUN apt-get install -y mysql-client-5.5
RUN apt-get install -y postgresql-client-9.4

# drush cron must be able to send emails
# site update notifications etc
RUN apt-get install -y ssmtp

# php
RUN apt-get install -y php5
RUN apt-get install -y php5-mysql
RUN apt-get install -y php5-pgsql
RUN apt-get install -y php5-gd

# cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
