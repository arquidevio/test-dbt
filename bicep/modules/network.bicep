@description('Name of the virtual network')
param vnetName string

param location string = resourceGroup().location
param addressPrefix string = '10.0.0.0/16'
param subnetPrefix string = '10.0.1.0/24'

resource vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: { addressPrefixes: [ addressPrefix ] }
    tags: { environment: 'managed' }
    subnets: [ { name: 'default', properties: { addressPrefix: subnetPrefix } } ]
  }
}

output vnetId string = vnet.id
output subnetId string = vnet.properties.subnets[0].id

// last-modified: 2026-03-25
