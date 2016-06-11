FROM base-debian-latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

# python
RUN apt-get install -y python2.7
RUN apt-get install -y python-dateutil
RUN apt-get install -y python-influxdb
RUN apt-get install -y python-requests
RUN apt-get install -y python-six
RUN apt-get install -y python-tz

# docker
RUN apt-get install -y apt-transport-https
RUN apt-get install -y ca-certificates
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN echo 'deb https://apt.dockerproject.org/repo debian-jessie main' > /etc/apt/sources.list.d/docker.list
RUN apt-get update
RUN apt-get install -y docker-engine

# cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
