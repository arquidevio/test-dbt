import { AppConfig } from '../types/derived-types.bicep'

param config AppConfig
param location string = resourceGroup().location

resource appServicePlan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: '${config.name}-plan'
  location: location
  sku: { name: config.tier, capacity: 1 }
}
