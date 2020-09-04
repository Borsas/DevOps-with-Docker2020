FROM ubuntu:16.04
WORKDIR /usr/app

RUN apt update && apt-get install -y curl
ADD script.sh /usr/app/script.sh

RUN chmod +x script.sh

CMD ["./script.sh"]
