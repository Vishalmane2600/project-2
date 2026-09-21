FROM node:24.19.0 AS builder

WORKDIR /App

COPY . /App

RUN npm install 

CMD ["npm", "run","dev"]


