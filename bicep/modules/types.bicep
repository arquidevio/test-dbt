@export()
type AppServiceConfig = {
  name: string
  tier: 'Free' | 'Basic' | 'Standard' | 'Premium'
  instanceCount: int
}

@export()
type DbConfig = {
  serverName: string
  databaseName: string
  skuName: string
}
