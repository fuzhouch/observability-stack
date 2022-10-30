## Deploy MinIO

Install a single node MinIO with command below. It will deploy a
single-node MinIO instance to currently configured Kubernetes context,
with one pod ``minio-single`` and one service ``minio-svc`` created,
under namespace called ``minio``.

For Minikube users, use ``minikube service`` command to get access URL
to MinIO console, supposed it should be something like
``http://192.168.0.9:30001``. The IP address depends on the settings of
Minikube, which can vary between machines. For simplicity reason I just
use ``http://192.168.9:30001`` in all chapters below in this post.

```
$ kubectl apply -f minio-single.yaml
$ minikube service -n minio minio-svc --url
```

## Create buckets

Login to MinIO console via ``http://192.168.1.9:30001`` in browser with
admin username and password define in ``minio-single.yaml``. After
logged in, select Service Accounts from navigation pane on the left.
Then there's a Create Service Account button from right.
