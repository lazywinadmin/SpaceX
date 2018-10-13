function Get-SXCompany
{
    <#
    .SYNOPSIS
    Retrieve SpaceX Company data
    
    .DESCRIPTION
    Retrieve SpaceX Company data
    
    .EXAMPLE
    Get-SXCompany
    
    .NOTES
    https://github.com/lazywinadmin/spacex
    #>
[CmdletBinding()]
PARAM()
    Invoke-RestMethod -Uri https://api.spacexdata.com/v3/info
}