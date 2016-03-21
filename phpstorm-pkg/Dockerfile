FROM debian:latest
MAINTAINER ragnar@waalaskala.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update
# install apt-utils as early as possible to prevent further nagging
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libxext6
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libxrender1
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libxtst6
RUN DEBIAN_FRONTEND=noninteractive apt-get clean

# dont delete apt-get update cache
# easier to install packs from shell (less, vim, etc) for testing
# RUN rm -rf /var/lib/apt/lists/*
