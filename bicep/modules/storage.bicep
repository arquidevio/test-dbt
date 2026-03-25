@description('Name of the storage account')
param storageAccountName string

@description('Azure region')
param location string = resourceGroup().location

@allowed(['Standard_LRS', 'Standard_GRS', 'Standard_ZRS', 'Premium_LRS'])
param sku string = 'Standard_LRS'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: { name: sku }
  kind: 'StorageV2'
  properties: { minimumTlsVersion: 'TLS1_2' }
}

output storageAccountId string = storageAccount.id
output blobEndpoint string = storageAccount.properties.primaryEndpoints.blob
