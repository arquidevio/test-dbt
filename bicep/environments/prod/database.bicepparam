using '../../modules/database.bicep'

param config = {
  serverName: 'sql-prod'
  databaseName: 'appdb'
  skuName: 'S3'
}
param adminLogin = 'sqladmin'
