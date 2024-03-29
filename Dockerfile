FROM node:16-alpine3.14

ENV NODE_ENV=development

WORKDIR /code

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD ["npm", "run", "serve"]