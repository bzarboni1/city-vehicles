// main.bicep
// This file will contain the core infrastructure definitions.

param location string = deployment().location

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-city-vehicles'
  location: location
  tags: {
    Project: 'City-Vehicles'
    Environment: 'Dev'
  }
}
