function Get-SXLaunchpad {
    <#
    .SYNOPSIS
    Retrieve SpaceX launch sites data
    
    .DESCRIPTION
    Retrieve SpaceX launch sites data
    
    .EXAMPLE
    Get-SXLaunchpad

    .EXAMPLE
    Get-SXLaunchpad -Launchpad stls
    
    .NOTES
    https://github.com/lazywinadmin/spacex
    #>
    [CmdletBinding()]
    PARAM($LaunchPad)
    try {
        if ($LaunchPad) {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/launchpads/$LaunchPad"
            }
        }
        else {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/launchpads"
            }
        }

        (Invoke-RestMethod @Splat)
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}