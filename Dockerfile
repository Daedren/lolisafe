FROM node:13-alpine

LABEL name "lolisafe"
LABEL version "3.0.0"
LABEL maintainer "iCrawl <icrawltogo@gmail.com>"

WORKDIR /usr/src/lolisafe

COPY package.json yarn.lock ./

RUN apk add --no-cache ffmpeg graphicsmagick &&\
yarn install

COPY . .

CMD ["node", "lolisafe.js"]
