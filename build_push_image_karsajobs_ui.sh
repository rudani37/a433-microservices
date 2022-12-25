#!/bin/bash
docker build -t karsajobs-ui:latest .                                   # Perintah untuk membuat Docker image, nama image karsajobs-ui, dan memiliki tag latest.

docker tag karsajobs-ui:latest ghcr.io/rudani37/karsajobs-ui:latest     # Mengubah nama image agar sesuai dengan format GitHub Packages

read -p "Token: " TOKEN                                                 # membaca inputan token dari ketika di terminal

echo $TOKEN | docker login ghcr.io -u rudani37 --password-stdin         # Login ke GitHub Packages via Terminal

docker push ghcr.io/rudani37/karsajobs-ui:latest                        # Mengunggah image ke GitHub Packages