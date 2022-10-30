## Learning metrics

This is a set of learning material for myself on how to create, manage
and get most out from Grafana metrics stacks. I used MinIO, Prometheus,
Grafana, Loki and Tempo, which covers metrics, logs and traces.

All the contents contain Kubernetes configuration files and helper
scripts. They are designed to be deployed on a devbox with Minikube or K3S
installed.  For simplicity reason I write all credentials as
**PLAIN TEXT**. They are OK for self-learning scenario but clearly a
serious security risk in production. I will not be responsible for any
issues in production environment when using any contents in this
repository.

The contents in this repository are all published in public domain.
Feel free to use them if you would like to learn Grafana stack.

## About running environment

All deployments are tested in a [K3S](https://k3s.io) environment. Some
are tested with Minikube as well, but there's no guarantee that Minikube
can apply all configurations. 

The reasons I don't use Minikube is it keeps reporting issues on my
Manjaro Linux. To be honest, all the contents start from Minikube.
However, when starting Kubernetes 1.25+, Minikube has multiple issues
that makes kvm2 and podman drivers fail to start. Thus I have to change
to K3S, which works perfectly on my Linux box with some tweaking.

For developers who has no issue on Minikube (probably with Docker
driver) on other platforms, it will be appreciated to get your pull
request.

## How to read the doc

1. [Setup K3S cluter](k3s/README.md)
2. [Setup MinIO](minio/README.md)
3. Setup Loki to save in MinIO (TBD)
4. Setup Grafana (TBD)
5. Setup Prometheus (TBD)
6. Setup Mimir to store Prometheus metrics in MinIO (TBD)
7. Setup Tempo (TBD)
