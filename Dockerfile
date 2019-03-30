FROM ubuntu:xenial
MAINTAINER Skataria

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qqy \
  && apt-get -qqy install \
    apt-utils curl git ssh rsync \
    libssl-dev zlib1g-dev libmysqlclient-dev \
    make curl gcc g++ redis-server libsqlite3-dev \
    libpq-dev ruby-dev ruby-bundler && rm -rf /var/lib/apt/lists/*
