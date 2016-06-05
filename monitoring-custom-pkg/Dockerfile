FROM base-debian-latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y python2.7
RUN apt-get install -y python-dateutil
RUN apt-get install -y python-influxdb
RUN apt-get install -y python-requests
RUN apt-get install -y python-six
RUN apt-get install -y python-tz

# cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
