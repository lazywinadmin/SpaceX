function Get-SXLaunchpad {
    [CmdletBinding()]
    PARAM($LaunchPad)
    try {
        if ($LaunchPad) {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v2/launchpads/$LaunchPad"
            }
        }
        else {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v2/launchpads"
            }
        }

        Invoke-RestMethod @Splat
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}