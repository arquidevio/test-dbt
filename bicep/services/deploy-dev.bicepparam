using './main.bicep'
import { AppConfig } from '../types/derived-types.bicep'

param config = {
  name: 'svc-dev'
  location: 'westeurope'
  tier: 'Basic'
}
