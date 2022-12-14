FROM node:16-alpine

ENV NODE_ENV=production

WORKDIR /app

#COPY [ "package.json", "package-lock.json*", "./"]

COPY package*.json ./

RUN npm install --legacy-peer-deps

RUN npm install react-scripts -g

COPY . .

EXPOSE 3000

CMD [ "npm","start" ]




