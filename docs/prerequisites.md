# Prerequisites

## minikube

Follow the installation instructions [here](https://minikube.sigs.k8s.io/docs/start/).

For Linux

```shell
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
```

## kubectl

Follow the installation instructions [here](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/).

For Linux

```shell
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

## Helm

Follow the installation instructions [here](https://helm.sh/docs/intro/install/).

For Linux

```shell
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```

## Skaffold

Follow the installation instructions [here](https://skaffold.dev/docs/install/).

For Linux

```shell
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \
sudo install skaffold /usr/local/bin/
```

## Localstack

To be able to use localstack, add the following alias to your `~/.bashrc` or `~/.zshrc` depending on your environment:

```shell
alias awslocal="aws --output text --no-cli-pager --region us-east-1 --endpoint-url=http://localhost:31566"
```
