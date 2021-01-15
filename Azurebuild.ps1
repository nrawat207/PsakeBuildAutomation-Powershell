Param ( 
    [string] $Task,
    [string] $BuildNumber
)

Import-Module '.\tools\psake\psake.psm1'

Write-Output "BuildNumber: $BuildNumber"

invoke-psake -t $Task -properties @{ BuildNumber=$BuildNumber }

if ($Error -ne '') 
{
    write-host "ERROR: $error" -fore RED; exit $error.Count
}
