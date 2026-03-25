import { DbConfig } from './types.bicep'

param config DbConfig
param location string = resourceGroup().location
param adminLogin string

@secure()
param adminPassword string

resource sqlServer 'Microsoft.Sql/servers@2023-05-01-preview' = {
  name: config.serverName
  location: location
  properties: { administratorLogin: adminLogin, administratorLoginPassword: adminPassword }
}

resource database 'Microsoft.Sql/servers/databases@2023-05-01-preview' = {
  parent: sqlServer
  name: config.databaseName
  properties: { collation: 'SQL_Latin1_General_CP1_CI_AS' }
  sku: { name: config.skuName }
}

output serverId string = sqlServer.id

// last-modified: 2026-03-25
