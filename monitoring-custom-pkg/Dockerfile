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

RUN apt-get install -y python2.7
RUN apt-get install -y python-dateutil
RUN apt-get install -y python-requests
RUN apt-get install -y python-six
RUN apt-get install -y python-tz
RUN apt-get install -y python-influxdb

# cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
