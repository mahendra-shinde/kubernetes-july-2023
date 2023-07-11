# Deployment

1. Deployment is wrapper for Replica-Set and Manages deployments
1. Maintains revision / deployment history (each history element is ReplicaSet)
1. Strategy could be either "Recreate" or "Rolling Update"

1. Recreate:  
	1. Stop and Delete one pod at a time (old replicaset)

	1. Once ALL the pods are deleted, start creating new pods

1. Rolling Update:
	1. Delete ONE old pod and REPLACE with ONE new pod.
	1. Repeat till all old pods are replaced with NEW ones.
	1. Number of instances / pod to delete and create is configurable.

## Recreate demo

```
$ kubectl apply -f deploy.yml
$ kubectl get rs,deploy,pod 
# Update image version from 1 to 2
$ kubectl set image deploy/app1 app1=mahendrshinde/myweb:2 --record
$ kubectl get rs -o wide -w
## Wait for new replicaset to be created
CTRL+C
$ kubectl set image deploy/app1 app1=mahendrshinde/myweb:3 --record
$ kubectl get rs -o wide -w
## Wait for new replicaset to be created
CTRL+C
$ kubectl rollout history deploy/app1
$ kubectl rollout undo deploy/app1
$ kubectl get rs -o wide -w
## Wait for new replicaset to be created
CTRL+C
$ kubectl rollout history deploy/app1
$ kubectl delete -f deploy.yml
```