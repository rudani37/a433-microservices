#menggunakan image Node.js versi 14 sebagai base image
FROM node:14-alpine 

#menggunakan /app sebagai working directory untuk container
WORKDIR /app

#Menyalin seluruh source code ke working directory di container
COPY . .

#Menentukan agar aplikasi berjalan dalam enviroment production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

#Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#Ekspos bahwa port yang digunakan oleh aplikasi adalah 8080
EXPOSE 8080

#jalankan server dengan perintah npm start
CMD [ "npm", "start" ]