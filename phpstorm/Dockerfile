FROM phpstorm-pkg
MAINTAINER ragnar@waalaskala.com

# http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/

COPY PhpStorm /PhpStorm

RUN mkdir /data

WORKDIR /data

ENTRYPOINT [ "/PhpStorm/bin/phpstorm.sh" ]
