FROM node:16-alpine as builder

WORKDIR /app

COPY . .

RUN npm ci 

RUN npm install -g serve 

RUN npm run build

EXPOSE 3000

CMD ["serve", "-s", "build"]