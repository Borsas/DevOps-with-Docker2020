#!/bin/bash
url=$1
name=${url##*/}

dockerhub=borsas/$name:latest

docker login

git clone $url && cd $name
docker build -t borsas/$name:latest .
docker push $dockerhub
rm -rf $name