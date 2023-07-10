# kubernetes-july-2023
Kubernetes Developer Training

## Connect Kubernetes Cluster on cloud

> Follow these steps only if Docker desktop is NOT installed in your system

1. Download "kubectl" exe for Kubernetes API Version 1.25.6

	https://dl.k8s.io/release/v1.25.6/bin/windows/amd64/kubectl.exe

1. Copy the file into "C:\tools\kubectl.exe"

1. Using Start Menu, Search for "ENV" then select "Edit Environment Variables"

1. Add new entry in existing PATH variable : "c:\tools"	

1. Open a NEW Command prompt or Powershell and try command `kubectl version --short`

1. Download the file k8s.config and copy it to %USERPROFILE%\.kube\config

	```CMD
	mkdir .kube
	cd downloads
	copy k8s.config ..\.kube\config
	```

1.	Test the config using following command:

	```
	kubectl cluster-info
	```
	
