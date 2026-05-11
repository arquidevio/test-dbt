param serviceName string
param location string = resourceGroup().location
param tier string = 'Standard'

resource appServicePlan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: '${serviceName}-plan'
  location: location
  sku: { name: tier, capacity: 1 }
}
