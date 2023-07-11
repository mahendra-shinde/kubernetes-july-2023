### Please change below values to suite your requirements
 GROUPNAME=k8s-training
 STRNAME=maxunlimited
 LOCATION=centralindia



# get the access key for newly created account
 key=$(az storage account keys list -n $STRNAME -g $GROUPNAME -o json --query [0].value)
## Using the same shell as step1, this command uses variables from step1
kubectl create secret generic  azure-secret --from-literal=azurestorageaccountname=$STRNAME --from-literal=azurestorageaccountkey=$key
