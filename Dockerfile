FROM node:alpine

RUN apk add bash
RUN npm install -g laravel-echo-server

WORKDIR /home/node/app

COPY . .

EXPOSE 6001

CMD laravel-echo-server start --dir=/home/node/app/config