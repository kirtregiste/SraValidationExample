
targetScope = 'subscription'

resource ResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-testrg'
  location: 'eastus'
} 

//module myMod 'storage.bicep' = {
// name: 'storageDeploy'
//  params: {
//    storageName: 'st-teststorage'
  //  location: 'eastus'
  //}
  //scope: resourceGroup(rgMod.name)
//} 
