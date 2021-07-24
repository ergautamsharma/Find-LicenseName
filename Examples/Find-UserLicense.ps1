#Connect to MSOLService (Connect-MsolService):

#Store MSOL User proprities to a variable as in below example:
$a = Get-MsolUser -UserPrincipalName gautam.sharma@techevangs.com

#To find the which all license assign to this user use below PS:
Find-LicenseName -MSOLUser $a 
