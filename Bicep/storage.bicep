param namePrefix string

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: '${namePrefix}rg'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
