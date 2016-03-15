FROM drush-pkg
MAINTAINER ragnar@waalaskala.com

COPY drush.phar /usr/local/bin/drush
RUN chmod 755 /usr/local/bin/drush
RUN drush init -y

WORKDIR /www/html/sites/default

CMD [ "/bin/bash", "--login", "-i" ]
