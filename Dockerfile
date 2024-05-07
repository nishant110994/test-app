FROM node:12.18.1

WORKDIR /usr/src/app

COPY . .

RUN npm ci --only=production

EXPOSE 8080

USER node

CMD ["node", "index.js"]
