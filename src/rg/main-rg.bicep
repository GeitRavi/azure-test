
@description('Name of the resourceGroup, will be created in the same location as the deployment.')
param resourceGroupName string = 'azure-test'

@description('Location for resources')
param location string = 'eastus'


module createResourceGroup './../module/bicep/resource-group.bicep' = {
    name: 'rg-${resourceGroupName}-001'
	scope: subscription()
    params: {
        resourceGroupName: resourceGroupName
        location: location
    }
}
