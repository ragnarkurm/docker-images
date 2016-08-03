FROM base-debian-latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

# for achive-backup, archive-restore
RUN apt-get install -y gzip
RUN apt-get install -y tar

# for sql-cli, sql-dump
# RUN apt-get install -y mysql-client
# RUN apt-get install -y postgresql-client

# drush cron must be able to send emails
# site update notifications etc
# RUN apt-get install -y ssmtp

# php
RUN apt-get install -y php5
RUN apt-get install -y php5-mysql
RUN apt-get install -y php5-pgsql
RUN apt-get install -y php5-gd
RUN apt-get install -y php5-sqlite
RUN apt-get install -y php5-curl

RUN DEBIAN_FRONTEND=noninteractive apt-get clean
RUN rm -rf /var/lib/apt/lists/*
