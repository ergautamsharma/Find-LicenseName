# Easy way to find the Microsoft subscription / Office 365 license Name with PowerShell

**Problem statement:** Exporting license detail via PowerShell always gives the SKU Part Number like “ENTERPRISEPREMIUM”, “SPE_E5”, etc...

**Workaround:** To address this required lot of additional scripts or thousands of lines of code to convert this in the regular name like “ENTERPRISEPREMIUM” to “Office 365 E5” as there are +900 Microsoft license types are available and keep increasing.

**Solution:** To make life simpler, have created a PS module called **“Find-LicenseName”**

This module includes Office 365, Microsoft 365, Microsoft Dynamics 365, Microsoft Workplace Analytics, Government, Education, etc... having 966 types of SKUs as of now. 
I'll keep updating this module as soon as new updates and/or feedback I receive.

**Below PS help To Find this module:**

Find-Module -Name _Find-LicenseName_

**Below PS help To install this module:** [PowerShell Gallery](https://www.powershellgallery.com/packages/Find-LicenseName "Find-LicenseName Module - PowerShell Gallery")

Install-Module -Name Find-LicenseName

Please visit [Find-LicenseName Module explain with an example - TechEvangs.com](https://techevangs.com/script/ps-module/easy-way-to-find-the-microsoft-subscription-office-365-license-name-with-powershell/ "Find-LicenseName Module - TechEvangs.com")

Feedback and Issues should be reported on [GitHub](https://github.com/ergautamsharma/Find-LicenseName/issues "Find-LicenseName Feedback - GitHub")
