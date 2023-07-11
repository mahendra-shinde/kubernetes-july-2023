# Kubernetes Service

Service allows "Service Discovery" and communication over TCP protocol.

## Service Types:

1. Cluster IP : Default, Internal Service only

1. NodePort   : Extension of ClusterIP, Accessible on Node IPs. (Uses Kube-Proxy)

1. LoadBalancer : Extension of NodePort, Accessible from anywhere!

## Cluster IP Demo

1. Deploy all resources 

```
$ kubectl apply -f .
$ kubectl get ep,svc
$ kubectl get po,rs,deploy
$ kubectl scale deploy/myweb --replicas=5
$ kubectl get ep 
```

1. Test the service

```
$ kubectl exec -it test -- sh
$ curl http://web1
$ curl http://web1.mahendra
exit
```

## Load Balancer service

1. Modify service1.yml, add "type: LoadBalancer" under "spec"
1. Update the service

	```
	$ kubectl apply -f service1.yml
	$ kubectl get svc
	```

1.	Open web browser and visit external ip displayed by service

1. Delete the service 

	```
	$ kubectl delete -f service1.yml
	```