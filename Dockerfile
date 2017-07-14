FROM alpine:latest

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

RUN curl -Ls http://install.convox.com/linux.tgz > convox.tgz
RUN tar -xzf convox.tgz -C /usr/bin
