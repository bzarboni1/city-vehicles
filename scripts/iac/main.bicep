// main.bicep
// This file will contain the core infrastructure definitions.
resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-city-vehicles'
  location: resourceGroup().location
  tags: {
    Project: 'City-Vehicles'
    Environment: 'Dev'
  }
}
