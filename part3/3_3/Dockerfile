FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    docker.io git  && \
    apt-get purge -y --auto-remove && \ 
    rm -rf /var/lib/apt/lists/* 

WORKDIR /app
COPY download.sh .

CMD ["ls -a"]
ENTRYPOINT ["/app/download.sh"]