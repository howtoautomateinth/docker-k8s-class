FROM node:8.7.0

WORKDIR /app

RUN npm install mysql express

COPY server.js .

EXPOSE 3000

CMD node server.js