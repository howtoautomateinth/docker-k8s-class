FROM debian:jessie-slim

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  cowsay \
  screenfetch && \
  rm -rf /var/lib/apt/lists/*

ENV PATH "$PATH:/usr/games"
ENTRYPOINT ["cowsay", "Yo, Entrypoint!!"]

#docker build -t demo:entry -f Dockerfile-entry .
#docker run --rm demo:entry
#docker run demo:entry screenfetch -E