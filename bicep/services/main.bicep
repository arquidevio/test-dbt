param appName string
param location string = resourceGroup().location

resource appServicePlan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: '${appName}-plan'
  location: location
  sku: { name: 'Standard', capacity: 1 }
}
