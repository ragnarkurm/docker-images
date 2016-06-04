FROM base-debian-latest
MAINTAINER ragnar@waalaskala.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y openssh-server
RUN apt-get install -y rdiff-backup
RUN rm -rf /etc/ssh
RUN mkdir /etc/ssh
RUN mkdir /etc/host

# Error: Missing privilege separation directory: ...
RUN mkdir /var/run/sshd

COPY server.sh /server.sh

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
