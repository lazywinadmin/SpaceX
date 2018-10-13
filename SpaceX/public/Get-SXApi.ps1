function Get-SXApi
{
    <#
    .SYNOPSIS
    Retrieve SpaceX API data
    
    .DESCRIPTION
    Retrieve SpaceX API data
    
    .EXAMPLE
    Get-SXApi
    
    .NOTES
    https://github.com/lazywinadmin/spacex
    #>
[CmdletBinding()]
PARAM()
    Invoke-RestMethod -Uri https://api.spacexdata.com/v3
}