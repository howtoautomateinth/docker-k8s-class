# docker build -t demo:copy -f copy.Dockerfile .
# docker run --rm demo:copy

FROM python:3.7-slim-buster
WORKDIR /usr/src/app
COPY . ./
CMD [ "python", "./app.py" ]