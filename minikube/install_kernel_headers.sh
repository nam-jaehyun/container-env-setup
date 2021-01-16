#!/bin/bash

# download kernel header
minikube ssh -- curl -Lo /tmp/kernel-headers-linux-4.19.94.tar.lz4 https://storage.googleapis.com/minikube-kernel-headers/kernel-headers-linux-4.19.94.tar.lz4 

# create a directory
minikube ssh -- sudo mkdir -p /usr/src/linux-headers-4.19.94

# untar the header header
minikube ssh -- sudo tar -I lz4 -C /usr/src/linux-headers-4.19.94 -xvf /tmp/kernel-headers-linux-4.19.94.tar.lz4

# create a symbolic link
minikube ssh -- sudo ln -s /usr/src/linux-headers-4.19.94 /lib/modules/4.19.94/build

# remove the downloaded file
minikube ssh -- rm /tmp/kernel-headers-linux-4.19.94.tar.lz4
