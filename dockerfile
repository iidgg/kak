FROM node:19.2.0

EXPOSE 3000

WORKDIR /app/

ENV NODE_ENV=prod

COPY package.json .
RUN yarn install

COPY . .

RUN ["yarn", "build"]
CMD ["yarn", "serve"]