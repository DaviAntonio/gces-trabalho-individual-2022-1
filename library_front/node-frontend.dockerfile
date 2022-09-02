FROM node:18.8.0-bullseye

WORKDIR /opt/library-front

COPY . ./

RUN npm install
