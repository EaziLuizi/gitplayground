param storageName string = 'eaziluizistorageacctountbicep1' // must be globally unique
param storageSku string = 'Standard_LRS'
param location string = 'eastus'

resource stg 'Microsoft.Storage/storageAccounts@2021-09-01' = {
    name: storageName
    location: location
    kind: 'StorageV2'
	properties: { 
		accessTier: 'Hot' 
	} 
    sku: {
        name: storageSku // reference variable
    }
}

output storageId string = stg.id // output resourceId of storage account
