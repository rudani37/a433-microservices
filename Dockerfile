FROM node:14-alpine

RUN apk add --no-cache python3 g++ make

WORKDIR /app

COPY . .

ENV NODE_ENV=production DB_HOST=item-db

RUN yarn install --production

CMD ["node", "src/index.js"]

EXPOSE 8080

RUN npm install --production --unsafe-perm && npm run build