# Tools

## Zellij

Zellij allows you to open multiple windows and tabs within a terminal. These configurations can be scripted to create dashbord type views (see `resources/zellij/layout.md` for a script that generated these views...)

![Dev Env](/images/zellij.png)

Nice set of videos explaining what tmux is and what it can do [here](https://www.youtube.com/watch?v=gmjyMxezIWU).

Follow the installation instructions [here](https://minikube.sigs.k8s.io/docs/start/)

For Linux

```shell
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

## K9s

![k9s](../images/k9s.jpg)

Follow the installation instructions [here](https://github.com/derailed/k9s).

For Linux

```shell
curl -sS https://webinstall.dev/k9s | bash
```

## kubectx & kubens

![kubectx](../images/kubectx-demo.gif)

![kubens](../images/kubens-demo.gif)

Follow the installation instructions [here](https://github.com/ahmetb/kubectx).

For Linux

```shell
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
```
