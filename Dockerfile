FROM ubuntu:14.04.3
MAINTAINER Dawid Malinowski <d.malinowski@oberthur.com>

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt-get update -qq \
  && apt-get install -y software-properties-common vim unzip wget curl \
  && apt-get autoremove -y \
  && apt-get clean install
