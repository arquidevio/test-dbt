import { BaseConfig } from 'base-types.bicep'

@export()
type AppConfig = BaseConfig & {
  tier: string
}
