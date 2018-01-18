function Get-SXLaunch {
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

        Invoke-RestMethod @Splat
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}