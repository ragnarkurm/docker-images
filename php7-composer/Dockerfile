FROM php7-pkg
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

# inspiration
# https://github.com/andrewholgate/docker-drupal8-php7/blob/master/Dockerfile

RUN apt-get install -y git
RUN apt-get clean

RUN install -o root -g root -m 755 -d /data

ENV COMPOSER_HOME /home/ubuntu/.composer
RUN echo "export COMPOSER_HOME=/root/.composer" >> /etc/bash.bashrc
RUN wget -O - https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod 755 /usr/local/bin/composer

WORKDIR /data

CMD [ "/bin/bash", "--login", "-i" ]
