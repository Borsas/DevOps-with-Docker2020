FROM ubuntu:16.04

EXPOSE 5000
WORKDIR /usr/app

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN apt install -y git

RUN git clone https://github.com/Borsas/Keittokilta
WORKDIR Keittokilta/keittokilta
RUN npm install -g serve

RUN npm install
RUN npm run build

CMD ["/bin/sh", "-c", "serve -s -l 5000 build"]