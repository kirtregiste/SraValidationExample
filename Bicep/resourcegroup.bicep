param location string
param rgname string

targetScope = 'subscription'

resource ResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgname
  location: location
} 
