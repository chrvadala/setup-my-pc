# setup-my-pc

`setup-my-pc.sh` is a simple script that configures personal computers, virtual machines and servers with some common tools. It fastify the setup of a new development environment.

[![chrvadala](https://img.shields.io/badge/website-chrvadala-orange.svg)](https://chrvadala.github.io)
[![Donate](https://img.shields.io/badge/donate-PayPal-green.svg)](https://www.paypal.me/chrvadala/25)

# Prequisite
```sh
sudo apt install -y curl wget git
```

# Usage

```bash
wget https://raw.githubusercontent.com/chrvadala/setup-my-pc/master/setup-my-pc.sh
chmod +x setup-my-pc.sh
./setup-my-pc.sh
```

# Installed tools

This script installs the following tools:

| Tool           | Description                 | Ref.                                    |
|----------------|-----------------------------|-----------------------------------------|
| nvm            | Node.js version manager     | https://github.com/nvm-sh/nvm           |
| yarn           | Node.js package manager     | https://yarnpkg.com/                    |
| docker         | Container engine            | https://www.docker.com/                 |
| docker-compose | Container orchestrator      | https://docs.docker.com/compose/        |
| kubectl        | Kubenetes admin tool        | https://kubernetes.io/docs/tasks/tools/ |
| minikube       | Basic Kubernetes stack      | https://minikube.sigs.k8s.io/docs/      |
| awscli         | Command line AWS admin tool | https://aws.amazon.com/it/cli/          |

## Contributors
- [chrvadala](https://github.com/chrvadala) (author)