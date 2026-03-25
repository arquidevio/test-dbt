using '../../modules/appservice.bicep'

param config = {
  name: 'app-dev'
  tier: 'Basic'
  instanceCount: 2
}
