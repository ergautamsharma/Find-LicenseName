
$Users = Get-MsolUser -All
$MSOLUsersExporthash = @{}

foreach ($User in $Users)
{
    $UserLicense = Find-LicenseName -MSOLUser $User
    
    $MSOLUsersExporthash = @{
        'User Principal Name' = $User.UserPrincipalName
        'Licenses' = $UserLicense
        
        }

    $MSOLUsersExport = New-Object PSObject -Property $MSOLUsersExporthash
    $MSOLUsersExport | Select-Object 'User Principal Name', 'Licenses' | Export-Csv -NoTypeInformation report.csv -Append
            
}