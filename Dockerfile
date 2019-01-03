FROM node:9.4.0-alpine

WORKDIR /usr/app

COPY package*.json ./
RUN npm install -g gulp && npm install -g node-gyp

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
