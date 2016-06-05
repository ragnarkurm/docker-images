FROM base-debian-latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y openssh-server
RUN apt-get install -y rdiff-backup
RUN apt-get install -y rsyslog
RUN apt-get install -y supervisor

# ssh conf
RUN rm -rf /etc/ssh
RUN mkdir /etc/ssh
# Error: Missing privilege separation directory: ...
RUN mkdir /var/run/sshd

# rdiff-backup conf
RUN mkdir /host
COPY server.sh /server.sh

# supervisor conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENTRYPOINT ["/usr/bin/supervisord"]
CMD ["-c", "/etc/supervisor/supervisord.conf"]
