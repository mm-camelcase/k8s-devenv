# Tools

## Zellij

Zellij provides the capability to open multiple windows and tabs within a terminal. You can script these configurations to create dashboard-like views. For an example see [layout.md](/resources/zellij/layout.md)

![Zellij Layout](/assets/images/zellij.png)



Follow the installation instructions [here](https://zellij.dev/)

For Linux

```shell
wget https://github.com/zellij-org/zellij/releases/download/v0.40.1/zellij-x86_64-unknown-linux-musl.tar.gz
tar -xzf zellij-x86_64-unknown-linux-musl.tar.gz
sudo mv zellij /usr/local/bin/
```

## K9s

![k9s](/assets/images/k9s.png)

Follow the installation instructions [here](https://github.com/derailed/k9s).

For Linux

```shell
curl -sS https://webinstall.dev/k9s | bash
```

## kubectx & kubens

![kubectx](/assets/images/kubectx-demo.gif)

![kubens](/assets/images/kubens-demo.gif)

Follow the installation instructions [here](https://github.com/ahmetb/kubectx).

For Linux

```shell
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
```
