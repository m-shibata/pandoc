FROM ubuntu:latest
MAINTAINER Mitsuya Shibata

## Prepare for package manager
#
RUN sed -i.bak "s,/\(archive.ubuntu.com\),/jp.\1,g" /etc/apt/sources.list

## Install pacakges for pandoc
#
RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
