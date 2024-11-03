
FROM node:alpine
WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3500

CMD [ "node", "index.js" ]