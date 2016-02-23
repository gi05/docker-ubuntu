FROM ubuntu:14.04.4

MAINTAINER Dawid Malinowski <d.malinowski@oberthur.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN echo 'APT::Install-Recommends "0"; \n\
          APT::Get::Assume-Yes "true"; \n\
          APT::Get::force-yes "true"; \n\
          APT::Install-Suggests "0";' > /etc/apt/apt.conf \
  && apt-get update \
  && apt-get install vim-nox curl telnet software-properties-common dnsutils net-tools less netcat \
  && apt-get autoremove -y \
  && apt-get clean install \
  && locale-gen en_US.UTF-8
