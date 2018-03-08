
if(!$PSScriptRoot) {
    $PSScriptRoot = $MyInovocation.PSScriptRoot
}

Get-Item "$PsScriptRoot\*.ps1" | ForEach-Object {
     . "$($_.FullName)"
}

Export-ModuleMember  -Function ConvertTo-NewtonsoftJson
Export-ModuleMember  -Function Get-NewtonsoftJsonSettings
Export-ModuleMember  -Function Set-NewtonsoftJsonSettings
Export-ModuleMember  -Function New-NewtonsoftJsonSettings