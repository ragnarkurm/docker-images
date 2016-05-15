FROM debian:latest
MAINTAINER ragnar@waalaskala.com

# apt basics
RUN DEBIAN_FRONTEND=noninteractive apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# for container inspection
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y less
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y vim
