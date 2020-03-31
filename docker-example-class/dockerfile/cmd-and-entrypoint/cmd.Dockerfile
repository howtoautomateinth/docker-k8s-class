FROM debian:jessie-slim

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  cowsay \
  screenfetch && \
  rm -rf /var/lib/apt/lists/*

ENV PATH "$PATH:/usr/games"
CMD ["cowsay", "Yo, CMD !!"]

#docker build -t demo:cmd -f Dockerfile-cmd .
#docker run --rm demo:cmd
#docker run --rm demo:cmd screenfetch -E