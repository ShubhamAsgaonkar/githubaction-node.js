FROM node:22-alpine

WORKDIR /app

COPY . .

EXPOSE 80

CMD ["node","helloworld.js"]
