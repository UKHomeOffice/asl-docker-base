FROM node:10-alpine

RUN apk upgrade --no-cache

RUN addgroup -S app
RUN adduser -S app -G app -u 999 -h /app/
RUN chown -R app:app /app/

WORKDIR /app

CMD node index.js
