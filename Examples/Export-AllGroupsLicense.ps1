
$Groups = Get-MsolGroup -All | Where-Object {$_.Licenses -ne $null}
$MSOLGroupsExporthash = @{}

foreach ($Group in $Groups)
{
    $GroupLicense = Find-LicenseName -MSOLGroup $Group

    $MSOLGroupsExporthash = @{
        'Display Name' = $Group.DisplayName
        'Licenses' = $GroupLicense
        
        }

    $MSOLGroupsExport = New-Object PSObject -Property $MSOLGroupsExporthash
    $MSOLGroupsExport | Select-Object 'Display Name', 'Licenses' | Export-Csv -NoTypeInformation report.csv -Append
            
}