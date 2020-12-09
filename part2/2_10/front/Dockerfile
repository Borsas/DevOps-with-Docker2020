FROM ubuntu:16.04 

WORKDIR /usr/app
EXPOSE 5000

# Build on my PC and just copied
COPY dist .

RUN apt-get update 
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install -g serve

CMD ["/bin/sh", "-c", "serve", "-s", "-l", "5000", "dist"]