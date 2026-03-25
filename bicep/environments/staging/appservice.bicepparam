using '../../modules/appservice.bicep'

param config = {
  name: 'app-staging'
  tier: 'Basic'
  instanceCount: 2
}
