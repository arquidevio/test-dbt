import { AppServiceConfig } from './types.bicep'

param config AppServiceConfig
param location string = resourceGroup().location

@description('Optional: virtual network subnet resource ID for VNet integration')
param vnetSubnetId string = ''

resource appServicePlan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: '${config.name}-plan'
  location: location
  sku: { name: config.tier, capacity: config.instanceCount }
}

resource webApp 'Microsoft.Web/sites@2023-01-01' = {
  name: config.name
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: { alwaysOn: config.alwaysOn ?? false }
    virtualNetworkSubnetId: !empty(vnetSubnetId) ? vnetSubnetId : null
  }
}

output appUrl string = 'https://${webApp.properties.defaultHostName}'
output principalId string = webApp.identity.principalId
