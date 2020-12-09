FROM node:alpine

WORKDIR /app

RUN apk add --no-cache --virtual \
    curl git && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    cd frontend-example-docker && npm install && \
    npm install -g serve && \
    API_URL=http://localhost:8000 npm run build && mv dist ../dist 

USER node 

EXPOSE 5000
WORKDIR /app/dist

CMD ["/bin/sh", "-c", "serve", "-s", "-l", "5000", "dist"]