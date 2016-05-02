FROM debian:latest
MAINTAINER ragnar@waalaskala.com

# apt basics
RUN DEBIAN_FRONTEND=noninteractive apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# for core-config
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y less
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y vim

# for download
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget

# for achive-backup, archive-restore
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gzip
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tar

# for sql-cli, sql-dump
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-client-5.5
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y postgresql-client-9.4

# drush cron must be able to send emails
# site update notifications etc
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ssmtp

# php
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-mysql
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-pgsql
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-gd
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-sqlite
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-curl

# cleanup
# RUN DEBIAN_FRONTEND=noninteractive apt-get clean
# RUN rm -rf /var/lib/apt/lists/*
