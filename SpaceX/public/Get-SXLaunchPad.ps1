function Get-SXLaunchpad {
    <#
    .SYNOPSIS
    Retrieve SpaceX launch sites data
    
    .DESCRIPTION
    Retrieve SpaceX launch sites data
    
    .PARAMETER LaunchPad
    The Site ID of a specific launch pad
    
    .EXAMPLE
    C:\PS> Get-SXLaunchpad
    Gets data about all the launch pads

    .EXAMPLE
    C:\PS> Get-SXLaunchpad -Launchpad stls
    Gets data for the launch pad with the specified Site ID
    
    .NOTES
    https://github.com/lazywinadmin/SpaceX
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