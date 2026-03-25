using '../../modules/database.bicep'

param config = {
  serverName: 'sql-prod'
  databaseName: 'appdb'
  skuName: 'S2'
}
param adminLogin = 'sqladmin'
