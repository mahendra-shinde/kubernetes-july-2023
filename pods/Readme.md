# Pod

1. The smallest deployable unit is pod.
1. Pod is wrapper for containers. Minimum ONE container is needed inside a pod.
1. Kubernetes guarantees that, all of the pod is deployed on SAME node.
1. Pod should be "described" in a YAML file (DSC)

```yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    app: demo1
  name: pod1
spec:
  containers:
  - name: c1
    image: <IMAGENAME>
	ports:
	  containerPort: XX
```

1.	Deploy the sample pod from YAML

	```
	$ kubectl apply -f pod1.yaml
	$ kubectl get po
	## get the pod by name
	$ kubectl get pod pod1
	## get the pods by label
	$ kubectl get po -l name=web1
	# Get the pod status and details
	$ kubectl describe pod pod1
	```