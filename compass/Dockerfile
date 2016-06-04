FROM debian:latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN apt-get install -y apt-utils
RUN apt-get upgrade -y
RUN apt-get install -y gcc
RUN apt-get install -y make
RUN apt-get install -y ruby
RUN apt-get install -y ruby-dev
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

RUN gem update --system
RUN gem install bundler
RUN gem install compass
RUN gem install compass-core
RUN gem install listen
RUN gem install sass-globbing

RUN mkdir /sass

WORKDIR /sass

ENTRYPOINT [ "compass" ]
