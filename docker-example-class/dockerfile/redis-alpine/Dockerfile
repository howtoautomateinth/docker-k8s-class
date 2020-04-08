# docker build -t demo:redis-alpine -f ./Dockerfile .
FROM alpine
RUN apk add --update redis
CMD ["redis-server"]