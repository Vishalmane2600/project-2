FROM node:24.19.0 AS builder

WORKDIR /App

COPY . /App

RUN npm install 

EXPOSE 5173

CMD ["npm", "run","dev"]
