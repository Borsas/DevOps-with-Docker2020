FROM ubuntu:16.04 

WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker && \
    cd backend-example-docker && npm install && \
    apt-get purge -y --auto-remove curl git && \ 
    rm -rf /var/lib/apt/lists/*  && \
    useradd -m app && chown app:app /app/backend-example-docker/logs.txt

USER app

EXPOSE 8000
WORKDIR /app/backend-example-docker

CMD ["/bin/sh", "-c", "FRONT_URL=http://localhost:5000 npm start"]