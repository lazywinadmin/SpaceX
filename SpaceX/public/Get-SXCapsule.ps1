function Get-SXCapsule {
    [CmdletBinding()]
    PARAM($Capsule)
    try {
        if ($Capsule) {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v2/capsules/$Capsule"
            }
        }
        else {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v2/capsules"
            }
        }

        Invoke-RestMethod @Splat
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}