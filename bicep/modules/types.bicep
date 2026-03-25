@export()
type AppServiceConfig = {
  name: string
  tier: 'Free' | 'Basic' | 'Standard' | 'Premium' | 'PremiumV3'
  instanceCount: int
  alwaysOn: bool?
}

@export()
type DbConfig = {
  serverName: string
  databaseName: string
  skuName: string
}

@export()
type RetentionPolicy = {
  days: int
  enabled: bool
}

// last-modified: 2026-03-25
