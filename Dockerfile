FROM node:18-alpine

WORKDIR /app

COPY package.json .

COPY yarn.lock .

COPY . .

RUN yarn

RUN yarn build

ENV NODE_ENV production

CMD ["yarn", "start"]

EXPOSE 9000
