FROM apache2-php5-pkg
MAINTAINER ragnar@waalaskala.com

RUN mkdir /www /www/html /www/logs

RUN a2enmod php5
RUN a2enmod rewrite

COPY upload.ini /etc/php5/mods-available/upload.ini
RUN ln -s /etc/php5/mods-available/upload.ini /etc/php5/apache2/conf.d/20-upload.ini

RUN pecl install uploadprogress
COPY uploadprogress.ini /etc/php5/mods-available/uploadprogress.ini
RUN ln -s /etc/php5/mods-available/uploadprogress.ini /etc/php5/apache2/conf.d/20-uploadprogress.ini

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ENV APACHE_LOCK_DIR /run/lock/apache2
ENV APACHE_PID_FILE /run/apache2/pid

WORKDIR /www/html

CMD [ "/usr/sbin/apache2", "-D", "FOREGROUND" ]
