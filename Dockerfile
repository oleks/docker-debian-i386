FROM portoleks/debian:latest

ARG username=docker

MAINTAINER oleks <oleks@oleks.info>

USER root

RUN dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    apt-utils libc6:i386 && \
  rm -rf /var/lib/apk/lists/*

USER ${username}

CMD ["bash"]
