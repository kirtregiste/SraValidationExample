param namePrefix string
param location string

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: '${namePrefix}rg'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
