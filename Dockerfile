# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:  https://github.com/ngacareer
# Twitter: https://twitter.com/ngacareer
# Docker:  https://hub.docker.com/ngacareer
# web   :  https://ngacareer.com

FROM ngacareer/alpine-curl:3.12

LABEL maintainer="triuhv <ms@ngacareer.com>" \
    architecture="amd64/x86_64" \
    php-version="8.0" \
    alpine-version="3.12" \
    build="02-Mar-2021"

ARG ALPINE_VERSION 3.12
ARG PHP_VERSION 8.0

RUN apk upgrade --no-cache --update && \
    apk add --no-cache --update dumb-init bash ca-certificates

RUN apk add --update-cache sudo bash nano 

# trust this project public key to trust the packages.
ADD https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub

# configure alpine repositories and php build dir.
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v${ALPINE_VERSION}/main" > /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/v${ALPINE_VERSION}/community" >> /etc/apk/repositories && \
    echo "https://dl.bintray.com/php-alpine/v${ALPINE_VERSION}/php-${PHP_VERSION}" >> /etc/apk/repositories

RUN apk add --no-cache --update php php-mbstring

ENTRYPOINT ["/usr/bin/dumb-init", "entrypoint.sh"]
