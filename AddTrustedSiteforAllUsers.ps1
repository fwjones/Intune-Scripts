<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2021 v5.8.195
	 Created on:   	3/7/2022 2:14 PM
	 Created by:   	Dave Just
	 Organization: 	
	 Filename: WingetInstallDetection.ps1   	
	===========================================================================
.DESCRIPTION
	Gets All users on local machine and adds sites listed in $TrustedSites array to trusted site for each user. 
	If a key is matched, return to Intune that the software is installed. 
.EXAMPLE
$SoftwareName = 'Chrome' # Search for an uninstall key with Displayname 'Chrome' for Google Chrome
#>


function Add-TrustedSites
{
	param (
		[string]$TrustedSites
	)
	$ErrorActionPreference = 'Continue'

    $ProfileList = Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList' | Where-Object {$_.GetValue('ProfileImagePath') -like "C:\Users\*"}
	$RegSubPath = 'Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains'
	
    foreach ($site in $TrustedSites) {
        $domain = $trustedsites.Substring($trustedsites.IndexOf(".") + 1)
        $subdomain = $trustedsites.Split('.')[0]

        foreach ($profile in $ProfileList) {
            if (-not(Test-Path )
        }
        
    }
	
}

# Test existence of HKEY_USERS psdrive and create if missing
$HKUParams = @{
    'PSProvider' = 'Registry'
    'Name' = 'HKU'
    'Root' = 'HKEY_USERS'
}
if (-not(test-path HKU:\)) {New-PSDrive @HKUParams}

$TrustedSites = @{

}

