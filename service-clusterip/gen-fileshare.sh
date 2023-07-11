### Please change below values to suite your requirements
 GROUPNAME=k8s-training
 STRNAME=maxunlimited
 LOCATION=centralindia

# create a resource group
 az group create --name $GROUPNAME --location $LOCATION

# create a new storage account
 az storage account create -n $STRNAME -g $GROUPNAME -l $LOCATION --sku Standard_LRS

# get the access key for newly created account
 key=$(az storage account keys list -n $STRNAME -g $GROUPNAME -o json --query [0].value)

# Create a new file share using Access key to storage account
 az storage share create -n share1  --account-name $STRNAME --account-key $key --quota 5    
