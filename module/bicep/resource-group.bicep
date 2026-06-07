param resourceGroupName string
param location string
param environment string = 'dev'
param managedIdentityId string
param managedIdentityPrincipalId string
param gitHubRepoOwner string
param gitHubRepoName string
param deploymentTimestamp string
param createdByManagedIdentity string

targetScope = 'subscription'

// Create Resource Group with security tags
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
  
  tags: {
    environment: environment
    deployedFrom: '${gitHubRepoOwner}/${gitHubRepoName}'
    managedIdentity: managedIdentityId
    createdBy: createdByManagedIdentity
    deploymentTime: deploymentTimestamp
    costCenter: 'Infrastructure'
    owner: gitHubRepoOwner
    automationMethod: 'Bicep-IaC'
  }
}

// Output resource group details for reference
@export()
output resourceGroupId string = rg.id
output resourceGroupName string = rg.name
output resourceGroupLocation string = rg.location
output tags object = rg.tags
