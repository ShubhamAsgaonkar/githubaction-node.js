FROM node:22-alpine

WORKDIR /app

RUN npm install

COPY . .

EXPOSE 80

CMD ["node","helloworld.js"]
