FROM base-debian-latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list
RUN echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list
RUN wget https://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg

RUN apt-get update

RUN apt-get install -y php7.0
RUN apt-get install -y php7.0-curl
RUN apt-get install -y php7.0-gd
RUN apt-get install -y php7.0-imagick
RUN apt-get install -y php7.0-json
RUN apt-get install -y php7.0-mbstring
RUN apt-get install -y php7.0-memcached
RUN apt-get install -y php7.0-mysql
RUN apt-get install -y php7.0-opcache
RUN apt-get install -y php7.0-pgsql
RUN apt-get install -y php7.0-xdebug
RUN apt-get install -y php7.0-xml

# dont cleanup
# other packs rely on this
