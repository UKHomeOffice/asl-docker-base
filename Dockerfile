FROM node:10-alpine

ARG NPM_AUTH_USERNAME
ARG NPM_AUTH_TOKEN

RUN addgroup -S app
RUN adduser -S app -G app -u 999 -h /app/
RUN chown -R app:app /app/

WORKDIR /app

CMD node index.js
