
module rgMod 'resourcegroup.bicep' = {
  scope: subscription()
  name: 'rgDeploy'
  params: {
    location: 'eastus'
    rgname: 'rg-testrg-001'
  }
}

module myMod 'storage.bicep' = {
  name: 'storageDeploy'
  params: {
    storageName: 'st-teststorage'
    location: 'eastus'
  }
  scope: resourceGroup(rgname)
} 
