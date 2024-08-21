#!/bin/bash
set -e

echo '*********************** setup nvm ***********************'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm install node

echo '*********************** setup yarn ***********************'
curl -o- -L https://yarnpkg.com/install.sh | bash

echo '*********************** setup docker ***********************'
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh
dockerd-rootless-setuptool.sh install

echo '*********************** setup docker compose ***********************'
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo '*********************** setup kubectl ***********************'
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

echo '*********************** setup minikube ***********************'
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
rm minikube

echo '*********************** setup aws ***********************'
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
complete -C '/usr/local/bin/aws_completer' aws

echo -e '\n\n\n*********************** setup completed ***********************'
echo "nvm: $(nvm --version)"
echo "node: $(node -v)"
echo "yarn: $($HOME/.yarn/bin/yarn -v)"
echo "docker: $(docker -v)"
echo "docker-compose: $(docker-compose --version)"
echo "kubectl: $(kubectl version --client)"
echo "minikube: $(minikube version --short)"
echo "aws: $(aws --version)"