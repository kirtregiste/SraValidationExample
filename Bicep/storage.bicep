param storageName string
param location string

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: '${storageName}'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
