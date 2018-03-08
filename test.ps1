
$obj = New-Object pscustomobject -Property @{Enum = (Get-DAte).DayOfWeek; int = 2; string = "du text"; array = @("un", "deux", "trois"); obj= @{enum = (Get-DAte).DayOfWeek; int = 2; string = "du text"; array = @("un", "deux", "trois")}}
Import-Module Fmg-PrettyJson
$settings = Get-NewtonsoftJsonSettings
$enumconv = "Newtonsoft.Json.Converters.StringEnumConverter"
$e = New-Object $enumconv
$settings.Converters.Add($e)
Set-NewtonsoftJsonSettings $settings
$obj | ConvertTo-NewtonsoftJson
