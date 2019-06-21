function Get-SXApi
{
    <#
    .SYNOPSIS
    Retrieve SpaceX API data
    
    .DESCRIPTION
    Retrieve SpaceX API data
    
    .EXAMPLE
    C:\PS> Get-SXApi
    Gets the API data
    
    .NOTES
    https://github.com/lazywinadmin/SpaceX
    #>
[CmdletBinding()]
PARAM()
    Get-SXData
}