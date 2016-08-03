FROM php7-pkg
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

# for achive-backup, archive-restore
RUN apt-get install -y gzip
RUN apt-get install -y tar

# for sql-cli, sql-dump
RUN apt-get install -y mysql-client
RUN apt-get install -y postgresql-client

# drush cron must be able to send emails
# site update notifications etc
RUN apt-get install -y ssmtp

# cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
