# Zellij

Zellij allows you to open multiple windows and tabs within a terminal. A zellij configuration can be save to a file called a zellij layout.

## Zellij Layouts

The layout used in this demo : [k8sdevenv.kdl](k8sdevenv.kdl)

![Zellij Layout](/assets/images/zellij.png)

To use this layout save `k8sdevenv.kdl` to `~/.config/zellij/layouts/` and run  

```bash
zellij --session Demo --layout k8sdevenv
```