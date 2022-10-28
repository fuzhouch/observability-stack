## Learning metrics

This is a set of learning material for myself on how to create, manage
and get most out from Grafana metrics stacks. I used MinIO, Prometheus,
Grafana, Loki and Tempo, which covers metrics, logs and traces.

All the contents contain Kubernetes configuration files and helper
scripts. They are designed to be used with a non-production, minikube
friendly self-learning environments. The contents in this repository are
all published in public domain. Feel free to use them if you would like
to learn Grafana stack.

However...

## IMPORTANT: Don't use in production!

For simplicity reason I write all username password as **PLAIN TEXT** in
configuration file. They are OK for self-learning scenario but clearly a
serious security risk in production. I will not be responsible for any
issues in production environment when using any contents in this
repository.
