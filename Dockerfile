FROM node:10-alpine
WORKDIR /usr/src
COPY package.json yarn.lock ./
RUN yarn
COPY . .
RUN yarn test
