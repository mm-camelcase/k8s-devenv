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


## Cluster Setup

Follow the instructions in [setup-cluster.md](docs/setup-cluster.md) to set up your local Kubernetes cluster.

## Useful complementary tools

These tools are not required but can enhance your development experience:

- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer for managing multiple terminal windows.
- [k9s](https://k9scli.io/) - A terminal-based UI to interact with Kubernetes clusters.
- [kubectx](https://github.com/ahmetb/kubectx) - A tool to switch between Kubernetes contexts easily.
- [kubens](https://github.com/ahmetb/kubectx) - A tool to switch between Kubernetes namespaces.

For more information on setting up these tools, refer to [optional-tooling.md](docs/optional-tooling.md)


