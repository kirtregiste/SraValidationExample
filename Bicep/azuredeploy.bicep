param namePrefix string
param location string
param rgname string


module rgMod 'resourcegroup.bicep' = {
  scope: subscription()
  name: 'rgDeploy'
  params: {
    location: location
    rgname: rgname
  }
}

module myMod 'storage.bicep' = {
  name: 'storageDeploy'
  params: {
    namePrefix: namePrefix
    location: location
  }
  scope: resourceGroup(rgname)
} 
