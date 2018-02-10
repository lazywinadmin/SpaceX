function Get-SXLaunch {
    <#
    .SYNOPSIS
    Retrieve SpaceX launch data
    
    .DESCRIPTION
    Retrieve SpaceX launch data
    
    .EXAMPLE
    Get-SXLaunch

    .EXAMPLE
    Get-SXLaunch -Latest

    .EXAMPLE
    Get-SXLaunch -Upcoming
    
    .NOTES
    https://github.com/lazywinadmin/spacex
    #>
    [CmdletBinding()]
    PARAM(
        [switch]$Latest,
        [switch]$Upcoming)
    try {
        if ($Latest) {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v2/launches/latest"
            }
        }
        elseif ($Upcoming) {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v2/launches/upcoming"
            }
        }

        else {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v2/launches"
            }
        }

        (Invoke-RestMethod @Splat)
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}