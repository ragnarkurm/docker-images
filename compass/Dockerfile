FROM debian:latest
MAINTAINER ragnar@waalaskala.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gcc
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y make
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ruby
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ruby-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get clean
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
