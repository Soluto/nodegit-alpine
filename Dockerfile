FROM node:8.1.4-alpine

WORKDIR /nodegit

RUN apk update && \
    apk upgrade && \
    apk add git libgit2-dev && \
    apk add python tzdata pkgconfig build-base && \
    yarn add -E nodegit@0.18.3 && \
    apk del python tzdata pkgconfig build-base && \
    rm yarn.lock package.json && \
    rm -rf /tmp/* /var/cache/apk/*

WORKDIR /
