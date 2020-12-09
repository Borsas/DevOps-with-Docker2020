FROM node:alpine

WORKDIR /app

RUN apk add --no-cache --virtual \
    curl git && \
    git clone https://github.com/docker-hy/backend-example-docker && \
    cd backend-example-docker && npm install && \
    chown node:node /app/backend-example-docker/logs.txt

USER node

EXPOSE 8000
WORKDIR /app/backend-example-docker

CMD ["/bin/sh", "-c", "FRONT_URL=http://localhost npm start"]