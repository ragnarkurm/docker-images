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

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python2.7
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-dateutil
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-requests
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-six
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-tz
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-influxdb

# cleanup
RUN DEBIAN_FRONTEND=noninteractive apt-get clean
RUN rm -rf /var/lib/apt/lists/*
