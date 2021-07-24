#Connect to MSOLService (Connect-MsolService):
#Store MSOL group proprities to a variable as in below example:
$Group = Get-MsolGroup -ObjectId xxxx5489-xx80-xxxx-80b8-8bxxf280xxxx 

#To find the which all license assign to this Group use below PS:
Find-LicenseName -MSOLGroup $Group
