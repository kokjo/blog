FROM debian:jessie

RUN apt-get update && apt-get -y install jekyll ssh
RUN useradd -m blog

USER blog
WORKDIR /home/blog
COPY blog .
COPY deploy.sh .

CMD ["./deploy.sh"]
