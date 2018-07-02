# readypods
kubernetes kubectl plugin to only show PODs which are NOT ready

## Motivation
```kubectl``` is a very nice CLI coming with kubernetes. It is very handy and intuitive to use. Whenever something goes wrong in a cluster I start my troubleshooting session by getting the POD status of all PODs within a specific namespace. This usually looks similar to the following output:

```
NAMESPACE     NAME                                                  READY     STATUS    RESTARTS   AGE
kube-system   heapster-v1.5.2-7b96b784fc-c4grp                      2/2       Running   0          4m
kube-system   kube-dns-5dcfcbf5fb-6x59h                             3/4       Running   0          4m
kube-system   kube-dns-autoscaler-69c5cbdcdd-w8dp6                  1/1       Running   0          4m
kube-system   kube-proxy-gke-readypods-default-pool-380df685-rl20   1/1       Running   0          4m
kube-system   kubernetes-dashboard-7cfb9474b8-hhkdz                 1/1       Running   0          4m
kube-system   l7-default-backend-57856c5f55-nx7mm                   1/1       Running   0          4m
kube-system   metrics-server-v0.2.1-7f8dd98c8f-bf4zp                2/2       Running   0          4m
```

The problem with kubectl is, that it is hard to detect that there is one container within the POD ```kube-dns-5dcfcbf5fb-6x59h``` that is not ready. This is indicated by ```3/4``` in the ```READY```` column. This is hard to see, right;).

So I decided to implement the tiny command which can be used to show all PODs which are not ready, meaningm, there is at least one container that is not ready. Thanks to kubernetes plugins I don't have to implement a whole CLI myself.

## How to install
