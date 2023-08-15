FROM node:18-alpine
ENV NODE_ENV=dev

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

RUN npm run start

COPY . .

CMD ["node", "app.js"]