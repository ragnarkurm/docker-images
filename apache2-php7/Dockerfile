FROM apache2-php7-pkg
MAINTAINER ragnar@waalaskala.com

# inspiration
# https://github.com/andrewholgate/docker-drupal8-php7/blob/master/Dockerfile

# run pecl stuff as early as possible
# since it takes most time
# then it is earier to develop the image script

# fails
# RUN pecl install uploadprogress
# COPY uploadprogress.ini /etc/php5/mods-available/uploadprogress.ini
# RUN ln -s /etc/php5/mods-available/uploadprogress.ini /etc/php5/apache2/conf.d/20-uploadprogress.ini

# COPY upload.ini /etc/php5/mods-available/upload.ini
# RUN ln -s /etc/php5/mods-available/upload.ini /etc/php5/apache2/conf.d/20-upload.ini

RUN install -o root -g root -m 755 -d /data
RUN install -o root -g root -m 755 -d /logs
RUN install -o root -g root -m 755 -d /private

RUN a2dismod mpm_event
RUN a2enmod cache
RUN a2enmod deflate
RUN a2enmod expires
RUN a2enmod file_cache
RUN a2enmod headers
RUN a2enmod mpm_prefork
RUN a2enmod php7.0
RUN a2enmod rewrite
RUN a2enmod rewrite

RUN a2dissite 000-default
RUN a2dissite default-ssl

# RUN printf "<FilesMatch \.php$> \n  SetHandler application/x-httpd-php \n</FilesMatch>" >> /etc/apache2/apache2.conf

ENV APACHE_RUN_DIR /var/run
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ENV APACHE_LOCK_DIR /run/lock/apache2
ENV APACHE_PID_FILE /run/apache2/pid

RUN install -d ${APACHE_LOCK_DIR}
RUN install -d $(dirname ${APACHE_PID_FILE})

WORKDIR /data

CMD [ "/usr/sbin/apache2", "-D", "FOREGROUND" ]
