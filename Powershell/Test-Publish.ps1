
Write-Output "Starting script"

$sourceAssembly = "C:\Data\TFS-Repo\DevDiv-tpc-New\Personal\sayedha\Prototypes\DeployPackage\Powershell\Sedodream.Powershell.Publish\bin\Debug\Sedodream.Powershell.Publish.dll"

if(Test-Path $sourceAssembly){
    Write-Output "File exists"h
}
else {
    Write-Output "File doesn't exist"
}

# Import the module
Import-Module $sourceAssembly



# Unload the module
Remove-Module $sourceAssembly


Write-Output "Script finished"
