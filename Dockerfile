FROM ubuntu-debootstrap:14.04.3

MAINTAINER Dawid Malinowski <d.malinowski@oberthur.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN echo 'APT::Install-Recommends "0"; \n\
          APT::Get::Assume-Yes "true"; \n\
          APT::Get::force-yes "true"; \n\
          APT::Install-Suggests "0";' > /etc/apt/apt.conf \
  && apt-get update \
  && apt-get install vim-nox curl telnet software-properties-common dnsutils net-tools \
  && apt-get autoremove -y \
  && apt-get clean install
