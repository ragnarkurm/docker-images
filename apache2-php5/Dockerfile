FROM apache2-php5-pkg
MAINTAINER ragnar@waalaskala.com

# run pecl stuff as early as possible
# since it takes most time
# then it is earier to develop the image script

RUN pecl install uploadprogress
COPY uploadprogress.ini /etc/php5/mods-available/uploadprogress.ini
RUN ln -s /etc/php5/mods-available/uploadprogress.ini /etc/php5/apache2/conf.d/20-uploadprogress.ini

COPY upload.ini /etc/php5/mods-available/upload.ini
RUN ln -s /etc/php5/mods-available/upload.ini /etc/php5/apache2/conf.d/20-upload.ini

RUN install -o root -g root -m 755 -d /data
RUN install -o root -g root -m 755 -d /logs
RUN install -o root -g root -m 755 -d /private

RUN a2enmod php5
RUN a2enmod rewrite

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ENV APACHE_LOCK_DIR /run/lock/apache2
ENV APACHE_PID_FILE /run/apache2/pid

WORKDIR /data/sites/default

CMD [ "/usr/sbin/apache2", "-D", "FOREGROUND" ]
