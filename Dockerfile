FROM node:alpine as builder
WORKDIR /tmp/app
COPY package*json /tmp/app/
RUN npm i

FROM node:alpine
MAINTAINER 'Maksim Kostromin https://github.com/daggerok/'
LABEL MAINTAINER='Maksim Kostromin https://github.com/daggerok/'
COPY --from=builder /tmp/app/node_modules/ /tmp/node_modules/
WORKDIR /tmp/
COPY . .
ENTRYPOINT npm t
