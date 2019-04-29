FROM node:9.2-alpine

WORKDIR /app

COPY index.js ./
COPY package*.json ./

RUN npm install --production

EXPOSE 4000 4001

ENTRYPOINT ["node", "./index.js"]
CMD []
