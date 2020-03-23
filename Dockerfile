FROM ubuntu:latest
MAINTAINER Miku <miku@avoin.systems>

ARG VERSION=0.7.4

RUN apt update \
  && apt install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget -O teeworlds.tar.gz https://github.com/teeworlds/teeworlds/releases/download/${VERSION}/teeworlds-${VERSION}-linux_x86_64.tar.gz \
  && tar -zxvf teeworlds.tar.gz \
  && mv teeworlds-${VERSION}-linux_x86_64 /teeworlds

EXPOSE 8303/udp

WORKDIR /teeworlds

COPY ./entrypoint.sh entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
