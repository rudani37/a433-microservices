#!/bin/bash
docker build -t karsajobs:latest .                                   # Perintah untuk membuat Docker image, nama image item-app, dan memiliki tag v1.

docker tag karsajobs:latest ghcr.io/rudani37/karsajobs:latest             # Mengubah nama image agar sesuai dengan format GitHub Packages

read -p "Token: " TOKEN

echo $TOKEN | docker login ghcr.io -u rudani37 --password-stdin # Login ke GitHub Packages via Terminal

docker push ghcr.io/rudani37/karsajobs:latest                        # Mengunggah image ke GitHub Packages