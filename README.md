# Kubernetes Development Environment (k8s-devenv)

A Kubernetes development environment.

## Overview

A Kubernetes development environment provides a local setup for developing, testing, and debugging Kubernetes-based applications. This guide will help you set up and configure all necessary tools to create an efficient workflow.

## Prerequisites

This environment depends on the following tools, which are essential for running Kubernetes locally and managing your environment:

- Unix OS
- [Minikube](https://minikube.sigs.k8s.io/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
- [Helm](https://helm.sh/)
- [Skaffold](https://skaffold.dev/)

For detailed setup instructions, refer to [prerequisites.md](docs/prerequisites.md)


## Devenv Environment Setup

Follow the instructions in [setup-devenv.md](docs/setup-devenv.md) to set up your local Kubernetes cluster.

## Useful complementary tools

These tools are not required but can enhance your development experience:

- [zellij](https://zellij.dev/) - Terminal multiplexer for managing multiple terminal windows.
- [k9s](https://k9scli.io/) - A terminal-based UI to interact with Kubernetes clusters.
- [kubectx](https://github.com/ahmetb/kubectx) - A tool to switch between Kubernetes contexts easily.
- [kubens](https://github.com/ahmetb/kubectx) - A tool to switch between Kubernetes namespaces.

For more information on setting up these tools, refer to [optional-tooling.md](docs/optional-tooling.md)

## How to use this development environment

### Kubernetes Dashboard

![Dev Env](images/k8s-dashboard.png)

Run...

```shell
minikube dashboard
```

and go to the provided url.

### Deploying code

The environment uses **Skaffold** as a tool to package and deploy source code directly into the local k8s cluster. Each project contains a `skaffold.yaml` definition file that tells Skaffold how to handle local deployments

#### Deploying Pod Resources

Resource deployments use helm style Skaffold configs (i.e. Skaffold generates helm install and update commands).

To deploy source code (assuming code is build first i.e. `./gradlew clean build`) into the local cluster run the following command from the same location as the `skaffold.yaml` definition file...

```shell
skaffold run
```

or Skaffold can monitor your source code for changes using...

```shell
skaffold dev
```


### Debugging code

The Skaffold configurations can be leveraged to swap in a devenv specific dockerfile ([example Skaffold config here](https://gitlab.com/workhuman/integrations/utils/email-api-service/-/blob/develop/skaffold.yaml) ).
This dockerfile ([example Dockerfile here](https://gitlab.com/workhuman/integrations/utils/email-api-service/-/blob/develop/src/main/resources/devenv/Dockerfile_devenv)) has the required options set to enable remote debugging of the target service.

Deploy the debug enabled service to the cluster...

```shell
skaffold debug
```

The deploy will automatically set up a port foward for debugging on port `5005`

Configure your debugger as a remote JVM debugger (e.g. in IntelliJ)...

![debugger](images/debugger.jpg)

### Update the cluster

Run the setup script again to update services to the latest available versions 

### Delete the cluster

The setup script is idempotent, but if you want to remove all traces of your cluster and start again you can run...

```shell
minikube delete
```

## Notes

- mention scripts are idempotent
- run devenv.sh again to redeploy orig
- click and go
- tool to pretify scripts
- mention services are spring boot * gradle

