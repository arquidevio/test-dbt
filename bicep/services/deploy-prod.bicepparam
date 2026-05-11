using './main.bicep'
import { AppConfig } from '../types/derived-types.bicep'

param config = {
  name: 'svc-prod'
  location: 'westeurope'
  tier: 'Standard'
}
