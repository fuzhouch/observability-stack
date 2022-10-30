## How to deploy a single node K3S

### Installation

Though official installation of K3S is as simple as one-line command  (see
[Quick-Start Guide](https://docs.k3s.io/quick-start), I still prefer a
pre-insalled package for management reason. Thus I use AUR via
``yay -S k3s-bin`` command. After installation, K3S can be started as
standard ``sudo systemctl start k3s`` command.

### Speed up image downloading via mirror

Most components used by K3S are hosted on [docker.io](https://hub.docker.com). 
Unfortunately, the access to Docker official registry can be slow due to
network connectivity issues. We may

[K3S' official documentation](https://docs.k3s.io/installation/private-registry#mirrors)
points out a way to set a mirror, by editing ``/etc/rancher/k3s/registries.yaml``.
I added China local mirror to speed up downloading for myself.

```
mirrors:
  docker.io:
    endpoint:
      - "http://hub-mirror.c.163.com"
config:
  "hub-mirror.c.163.com":
    tls:
      cert_file:
      key_file:
      ca_file:
```

After adding mirror, please restart K3S service to make it take effect.

### Use standard kubectl command

K3S suggest users use ``k3s kubectl`` for regular management. However it
does not work with most Kubernetes service. This is because it reads
credential at ``/etc/rancher/k3s/k3s.yaml`` instead of
``~/.kube/config``. This behavior prevents many Kubernetes tools (e.g. K9S)
accessing the created cluster.

There are suggestions by pointing ``KUBECONFIG`` environment variable to
``/etc/rancher/k3s/k3s.yaml``. This is not a good idea for me because my
configuration file contains configuration for working with
multiple clusters in parallel.

Thus the ideal idea for me is to merge the cluster endpoint, user
credential and context in ``k3s.yaml`` to ``~/.kube/config``.
