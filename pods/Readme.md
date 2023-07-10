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
    - containerPort: XX
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

1. Quality of Service 
	1. Burstable:	Minimum CPU and Memory set, No Upper limit

	```
	resources:
      requests:
        memory: "64Mi"
        cpu: "100m"
	```

	2. Guaranteed:  No Minimum but Limit is Set (Request = Limit)

	 resources:
      limits:
        memory: "64Mi"
        cpu: "100m"

	3. BestEffort:  No Minimum and Maximum limit set.

1. Debugging pods / containers

	```
	$ kubectl exec -t pod1 -- cat /etc/os-release
	$ kubectl exec -it pod1 -- sh
	$ apk add curl
	$ curl http://localhost
	$ curl http://localhost
	$ curl http://localhost/page1
	$ curl http://localhost/page2
	$ exit
	```

	> For multi-container pod, exec need extra parameter
	`kubectl exec -it pod1 -c web -- sh`

1. View the logs

	```
	$ kubectl logs pod1
	```


