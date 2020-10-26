# ----------------------------------
#
# Pterodactyl JDK 15 Dockerfile
#
# ----------------------------------
FROM openjdk:15-jdk-alpine

MAINTAINER xXQuantumSoulXx, <me@quantumsoul.xyz>

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser -D -h /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
