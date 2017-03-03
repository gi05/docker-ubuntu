FROM ubuntu:xenial-20170214

MAINTAINER Dawid Malinowski <d.malinowski@oberthur.com>

# Set the locale
RUN locale-gen en_US.UTF-8  

ENV DEBIAN_FRONTEND=noninteractive \
    LANGUAGE=en_US.en \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

RUN echo 'APT::Install-Recommends "0"; \n\
          APT::Get::Assume-Yes "true"; \n\
          APT::Install-Suggests "0";' > /etc/apt/apt.conf \
  && apt-get update \
  && apt-get upgrade \
  && apt-get dist-upgrade \
  && apt-get install vim-nox curl telnet software-properties-common dnsutils net-tools less netcat \
  && apt-get autoremove -y \
  && apt-get clean install \
  && rm -rf /var/lib/apt/lists/*
