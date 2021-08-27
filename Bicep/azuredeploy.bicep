param resourceGroupLocation string
param storageAccountName string
@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_RAGRS'
  'Standard_ZRS'
  'Premium_LRS'
  'Premium_ZRS'
  'Standard_GZRS'
  'Standard_RAGZRS'
])
param storageAccountSku string
@allowed([
  'BlobStorage'
  'BlockBlobStorage'
  'FileStorage'
  'Storage'
  'StorageV2'
])
param storageAccountKind string
@allowed([
  'Cool'
  'Hot'
])
param storageAccountAccessTier string

targetScope = 'subscription'

resource ResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-testrg'
  location: 'eastus'
} 

module storageAccountModule 'storageaccount.bicep'= {
  scope: ResourceGroup
  name: 'storageAccountDeploy'
  params: {
    resourceGroupLocation: resourceGroupLocation
    storageAccountName: storageAccountName
    storageAccountSku: storageAccountSku
    storageAccountKind: storageAccountKind
    storageAccountAccessTier: storageAccountAccessTier
  }
}
