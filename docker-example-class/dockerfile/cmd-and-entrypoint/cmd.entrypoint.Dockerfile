FROM debian:jessie-slim

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  cowsay \
  screenfetch && \
  rm -rf /var/lib/apt/lists/*

ENV PATH "$PATH:/usr/games"

CMD ["Yo, CMD!!"]
ENTRYPOINT ["cowsay", "Yo, Entrypoint!!"]

#docker build -t demo:cmd-entry -f Dockerfile-cmd-entry .
#docker run --rm demo:cmd-entry
#docker run --rm demo:cmd-entry Overriding arg passed in cmd