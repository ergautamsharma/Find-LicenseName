
$Users = Get-Content InputFile.txt # update the text file name which contains required users UPN
$MSOLUsersExporthash = @{}

foreach ($User in $Users)
{
    $MSOSUser = Get-MsolUser -UserPrincipalName $User
    $UserLicense = Find-LicenseName -MSOLUser $MSOSUser

    $MSOLUsersExporthash = @{
        'User Principal Name' = $MSOSUser.UserPrincipalName
        'Licenses' = $UserLicense
        
        }

    $MSOLUsersExport = New-Object PSObject -Property $MSOLUsersExporthash
    $MSOLUsersExport | Select-Object 'User Principal Name', 'Licenses' | Export-Csv -NoTypeInformation report.csv -Append
            
}