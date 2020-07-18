#!/bin/bash
set -e

echo 'setup nvm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm install node

echo 'setup yarn'
curl -o- -L https://yarnpkg.com/install.sh | bash

echo 'setup docker'
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh

echo 'setup minikube'
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
rm minikube

echo -e '\n\n\nsetup completed'
nvm version
node -v
yarn -v
docker -v
minikube version
