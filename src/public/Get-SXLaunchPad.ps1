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
                Path = "launchpads/$LaunchPad"
            }
        }
        else {
            $Splat = @{
                Path = "launchpads"
            }
        }

        (Get-SXData @Splat)
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}