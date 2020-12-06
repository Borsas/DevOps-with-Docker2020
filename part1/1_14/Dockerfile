FROM ubuntu:16.04
FROM ruby:2.6.0

WORKDIR /usr/app
EXPOSE 3000


RUN apt-get update 
RUN apt-get install -y curl
RUN apt-get install -y git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs

RUN git clone https://github.com/docker-hy/rails-example-project
WORKDIR rails-example-project

RUN bundle install
RUN rails db:migrate 
CMD ["/bin/sh", "-c", "rails s"]
