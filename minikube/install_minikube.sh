#!/bin/bash

# download minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo mv minikube /usr/local/bin/

# update repo
sudo apt-get update

# install apt-transport-https
sudo apt-get install -y apt-transport-https

# add the public key
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 3746C208A7317B0F

# add the GPG key
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# add sources.list.d
sudo touch /etc/apt/sources.list.d/kubernetes.list
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list

# update repo
sudo apt-get update

# install Kubernetes
sudo apt-get install -y kubelet kubeadm 
