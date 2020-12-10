FROM node:alpine as build-stage

WORKDIR /app

RUN apk add git --no-cache && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    cd frontend-example-docker && npm install && \
    npm run build && mv dist ../dist
    
USER node
FROM nginx

COPY --from=build-stage /app/dist /usr/share/nginx/html