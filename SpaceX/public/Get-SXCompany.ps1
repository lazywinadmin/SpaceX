function Get-SXCompany
{
    <#
    .SYNOPSIS
    Retrieve SpaceX Company data
    
    .DESCRIPTION
    Retrieve SpaceX Company data
    
    .EXAMPLE
    C:\PS> Get-SXCompany
    Gets the company data
    
    .NOTES
    https://github.com/lazywinadmin/SpaceX
    #>
[CmdletBinding()]
PARAM()
    Get-SXData -Path info
}