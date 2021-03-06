
# Just need to write out an XML file with the correct parameter values

# we need to insert the fake delimiter because we want a single string not an array
$strToExecute = (Get-Content C:\Temp\ps\content.out -Delimiter "doesntexist")

Write-Host ($strToExecute)

"settingsFromUser: {0}" -f $settingsFromUser | Write-Host | Out-Null

"Invoking the expression" | Write-Host | Out-Null
Invoke-Expression $strToExecute
"settingsFromUser: {0}" -f $settingsFromUser | Write-Host | Out-Null
"settingsFromUser.length: {0}" -f $settingsFromUser.length | Write-Host | Out-Null
"settingsFromUser[1] .Name, .Value: [{0},{1}]" -f $settingsFromUser[1].Name,$settingsFromUser[1].Value | Write-Host | Out-Null
