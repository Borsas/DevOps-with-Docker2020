FROM ubuntu:16.04 

WORKDIR /usr/app
EXPOSE 8000

COPY backend-example-docker .

RUN apt-get update 
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install

CMD ["/bin/sh", "-c", "npm start"]