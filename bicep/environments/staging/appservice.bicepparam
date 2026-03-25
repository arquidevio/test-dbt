using '../../modules/appservice.bicep'

param config = {
  name: 'app-stg'
  tier: 'Basic'
  instanceCount: 1
}
