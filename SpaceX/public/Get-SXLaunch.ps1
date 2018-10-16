function Get-SXLaunch {
    <#
    .SYNOPSIS
    Retrieve SpaceX launch data
    
    .DESCRIPTION
    Retrieve SpaceX launch data
    
    .PARAMETER Latest
    Just get data for the latest launch
    
    .PARAMETER Upcoming
    Just get data for upcoming launches
    
    .EXAMPLE
    Get-SXLaunch
    Gets data for all the launches

    .EXAMPLE
    Get-SXLaunch -Latest
    Gets data for the latest launch

    .EXAMPLE
    Get-SXLaunch -Upcoming
    Gets data for upcoming launches
    
    .NOTES
    https://github.com/lazywinadmin/SpaceX
    #>
    [CmdletBinding()]
    PARAM(
        [switch]$Latest,
        [switch]$Upcoming)
    try {
        if ($Latest) {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/launches/latest"
            }
        }
        elseif ($Upcoming) {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/launches/upcoming"
            }
        }

        else {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/launches"
            }
        }

        (Invoke-RestMethod @Splat)
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}