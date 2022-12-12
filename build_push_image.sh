#!/bin/bash

TOKEN=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  

docker build -t item-app:v1 . # Perintah untuk membuat Docker image, nama image item-app, dan memiliki tag v1.

docker images # Melihat daftar image di lokal

docker tag 42be613db468 ghcr.io/rudani37/item-app:v1 # Mengubah nama image agar sesuai dengan format GitHub Packages

echo $TOKEN | docker login ghcr.io -u rudani37 --password-stdin # Login ke GitHub Packages via Terminal

docker push ghcr.io/rudani37/item-app:v1set # Mengunggah image ke GitHub Packages