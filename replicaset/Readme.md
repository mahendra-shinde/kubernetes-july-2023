# ReplicaSet

Group of pods with `Self Healing` and scalability. ReplicaSet has "podTemplate" for creation of new pods. Pods are selected by matching labels.

ReplicaSet Controller manages replicaset and maintains the "Desired" count equals to "Current"

1. Download the sample [replicaset](https://raw.githubusercontent.com/mahendra-shinde/kubernetes-july-2023/main/replicaset/myapp.yaml)



1. Deploy the replicaset

	```
	$ kubectl apply -f myapp.yaml
	$ kubectl get replicaset
	$ kubectl get po -l name=myapp
	```

1.	Scale the pods In/Out 

	```
	$ kubectl scale rs/myapp --replicas=5
	$ kubectl get pods
	```

1.	Self Heal demo

	```
	# take down one of the node
	$ kubectl drain aks-agentpool-16525768-vmss000008 --force --ignore-daemonsets
	$ kubectl get pods -l name=myapp -w
	$ kubectl uncordon aks-agentpool-16525768-vmss000008
	```