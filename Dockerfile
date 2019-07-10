FROM node:10-alpine

RUN apk add shadow --no-cache
RUN apk upgrade --no-cache

RUN usermod -s /sbin/nologin operator
RUN usermod -s /sbin/nologin postgres
RUN usermod -s /sbin/nologin node

RUN addgroup -S app
RUN adduser -S app -G app -u 999 -h /app/
RUN chown -R app:app /app/

WORKDIR /app

CMD node index.js
