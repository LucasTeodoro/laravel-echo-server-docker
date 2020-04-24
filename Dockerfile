FROM node:alpine

RUN apk add bash
RUN npm install -g laravel-echo-server

EXPOSE 6001

CMD laravel-echo-server start --dir=/home/node/app/config/