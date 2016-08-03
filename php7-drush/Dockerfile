FROM php7-drush-pkg
MAINTAINER ragnar@waalaskala.com

COPY drush.phar /usr/local/bin/drush
RUN chmod 755 /usr/local/bin/drush
RUN drush init -y

# dont know the exact structure
WORKDIR /data

CMD [ "/bin/bash", "--login", "-i" ]
