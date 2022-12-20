FROM node:18.12.0-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . /app

EXPOSE 80

CMD ["node", "/app/index.js"]