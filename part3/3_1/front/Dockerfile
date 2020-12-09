FROM ubuntu:16.04 

WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    npm install -g serve && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    cd frontend-example-docker && npm install && \
    npm run build && mv dist ../dist && \
    apt-get purge -y --auto-remove curl git && \ 
    rm -rf /var/lib/apt/lists/* 

WORKDIR /app/dist

EXPOSE 5000

CMD ["/bin/sh", "-c", "serve", "-s", "-l", "5000", "dist"]