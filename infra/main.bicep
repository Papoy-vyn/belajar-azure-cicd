param appName string = 'belajarcicdweb123'

param location string = resourceGroup().location


resource appPlan 'Microsoft.Web/serverfarms@2022-03-01' = {

  name: '${appName}-plan'

  location: location

  sku: {
    name: 'F1'
    tier: 'Free'
  }

}


resource webApp 'Microsoft.Web/sites@2022-03-01' = {

  name: appName

  location: location

  properties: {

    serverFarmId: appPlan.id

  }

}
