FROM debian:latest
MAINTAINER ragnar@waalaskala.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apache2
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y memcached
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5
# for pecl extensions
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-gd
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-memcache
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php5-mysql
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php-apc
# for pecl extensions
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php-pear
RUN DEBIAN_FRONTEND=noninteractive apt-get clean

# dont delete apt-get update cache
# easier to install packs from shell (less, vim, etc) for testing
# RUN rm -rf /var/lib/apt/lists/*
