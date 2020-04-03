# docker build -t demo:entry -f entrypoint.Dockerfile .
# docker run --rm demo:entry
# docker run demo:entry screenfetch -E

FROM debian:jessie-slim

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  cowsay \
  screenfetch && \
  rm -rf /var/lib/apt/lists/*

ENV PATH "$PATH:/usr/games"
ENTRYPOINT ["cowsay", "Yo, Entrypoint!!"]
