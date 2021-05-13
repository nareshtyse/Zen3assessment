$subscriptionId = "------------------------------"
$templateFile = "--------\deploy.json"
$parametersFile = "-----------------\parameters.json"
$resourceGroup = "-------"
Set-AzContext -Subscription $subscriptionId
$rgExists = Get-AzResourceGroup -Name $resourceGroup -ErrorAction SilentlyContinue
if($null -ne $rgExists){
    Write-Host "Deploying Virtual Machine under resource group $resourceGroup" -ForegroundColor Green
    #New-AzResourceGroupDeployment -Name sample -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $parametersFile -Verbose
	New-AzResourceGroupDeployment  -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $parametersFile -Verbose
}
