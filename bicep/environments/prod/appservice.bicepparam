using '../../modules/appservice.bicep'

param config = {
  name: 'app-prod'
  tier: 'Standard'
  instanceCount: 3
  alwaysOn: true
}
