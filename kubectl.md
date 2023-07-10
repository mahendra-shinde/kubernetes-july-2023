# Kubectl : Kubernetes CLI

1. Kubectl depends on "kubeconfig" file for credentials and URL of API Server
1. kubectl uses Digitial certs & Token for authentication. 
1. Kubectl Version should be higher or equal to Kubernetes API Version
	Example:
		kubectl 1.26.9 for Kubernetes API 1.25.5 [Good / Compatible]
		kubectl 1.26.9 for Kubernetes API 1.26.9 [Best ]
		kubectl 1.26.3 for Kubernetes API 1.27.0 [Should avoid ]

1.	Syntax

	```
	$ kubectl [Verb] [Noun] [Options]

	$ kubectl get nodes				# List all the nodes
	$ kubectl get nodes -o wide 	# List all the nodes with additional details
	$ kubectl top nodes
	```

	> -o supports : json, yaml, wide and table

## Create your own namespace and set as default namespace

1.	Create a namespace (replace 'mahendra' with your name)
	
	```
	$ kubectl create namespace mahendra
	```

1.	Set default namespace for current context

	```
	$ kubectl config set-context --current --namespace=mahendra
	$ kubectl config view
	```