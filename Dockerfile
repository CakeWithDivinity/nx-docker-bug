FROM node:alpine

RUN corepack enable

USER 1000:1000

WORKDIR /app

