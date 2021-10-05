FROM node:16.10-alpine3.13

WORKDIR /usr/src/app

COPY package*.json .

RUN npm ci

COPY . ./

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
